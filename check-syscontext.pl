#!/usr/bin/env perl

use warnings;
use strict;
use FileHandle;
use DBI;
use Getopt::Long;
use Data::Dumper;
use File::Slurp;
use Try::Tiny;

my %optctl = ();

my($db, $username, $password);
my ($help, $sysdba, $connectionMode, $localSysdba, $sysOper, $sqlout) = (0,0,0,0,0,0);

Getopt::Long::GetOptions(
	\%optctl,
	"database=s"	=> \$db,
	"username=s"	=> \$username,
	"password=s"	=> \$password,
	"sqlout!"		=> \$sqlout,
	"sysdba!"		=> \$sysdba,
	"local-sysdba!"=> \$localSysdba,
	"sysoper!"		=> \$sysOper,
	"z|h|help"		=> \$help
);

if (! $localSysdba) {

	$connectionMode = 0;
	if ( $optctl{sysoper} ) { $connectionMode = 4 }
	if ( $optctl{sysdba} ) { $connectionMode = 2 }

	usage(1) unless ($db and $username and $password);
}


#print qq{
#
#USERNAME: $username
#DATABASE: $db
#PASSWORD: $password
    #MODE: $connectionMode
 #RPT LVL: @rptLevels
#};
#exit;


$|=1; # flush output immediately

my $dbh ;

if ($localSysdba) {
	$dbh = DBI->connect(
		'dbi:Oracle:',undef,undef,
		{
			RaiseError => 1,
			AutoCommit => 0,
			ora_session_mode => 2
		}
	);
} else {
	$dbh = DBI->connect(
		'dbi:Oracle:' . $db,
		$username, $password,
		{
			RaiseError => 1,
			AutoCommit => 0,
			ora_session_mode => $connectionMode
		}
	);
}

die "Connect to  $db failed \n" unless $dbh;
$dbh->{RowCacheSize} = 100;

my $dataFile='symbols-libserver-12_19.txt';
my $envFile='env-names.txt';

-r $dataFile || die "caannot read file '$dataFile' - $!";
-r $envFile || die "caannot read file '$envFile' - $!";

my @data = read_file($dataFile, chomp => 1);
my @envs = read_file($envFile, chomp => 1);

my $sql=q{select sys_context(?,?), ? parm_name  from dual};
my $sth = $dbh->prepare($sql,{ora_check_sql => 0}) or die $dbh->errstr;
$sth->{PrintError}=0;
$sth->{RaiseError}=0;

if ($sqlout) {
print q{
col parm_value format a50
col env_name format a15
col parm_name format a40
set linesize 200 trimspool off
set pagesize 200

};
}

my @sqlLines=();

foreach my $envName (@envs) {

	foreach my $parm (@data) {
		my $caughtError=0;

		try {
			$sth->execute($envName,$parm,$parm) or die $sth->errstr;
		}
		catch {
			my($err,$errStr) = ($dbh->err, $dbh->errstr);

			$caughtError=1;

			if ( $err == 2003 || $err == 28106) {
				warn "errStr: $errStr\n";
				warn "  $parm is invalid for '$envName'\n";
			} else {
				warn "errStr: $errStr\n";
				warn "   for $envName, $parm\n";
			}
		};

		next if $caughtError;

		my ($value,$parmName) = $sth->fetchrow_array;
		$sth->finish;

		# environment names other than USERENV may not raise any errors at all
		if ($envName ne 'USERENV') {
			next unless $value;
		}

		if ($sqlout) {
			push @sqlLines, qq[select '$envName' "ENV_NAME", '$parmName' "PARM_NAME", sys_context('$envName','$parmName') "PARM_VALUE" from dual\n];
			push @sqlLines, "union all\n";
		} else {
			print "$envName,$parmName\n";
		}

	}
}

if ($sqlout) {
	pop @sqlLines;
	print @sqlLines;
	print "/\n";
}


$dbh->disconnect;

sub usage {
	my $exitVal = shift;
	$exitVal = 0 unless defined $exitVal;
	use File::Basename;
	my $basename = basename($0);
	print qq/

usage: $basename

  -database      target instance
  -username      target instance account name
  -password      target instance account password
  -sysdba        logon as sysdba
  -sqlout        outpout sql for SYS_CONTEXT()
  -sysoper       logon as sysoper
  -local-sysdba  logon to local instance as sysdba. ORACLE_SID must be set
                 the following options will be ignored:
                   -database
                   -username
                   -password

  example:

  $basename -database dv07 -username scott -password tiger -sysdba  

  $basename -local-sysdba 

/;
   exit $exitVal;
};



