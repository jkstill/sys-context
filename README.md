
# find all known sys_context parameters for the userenv environment

Possible Parameter names for `sys_context()` were found by scanning library files that contained `USERENV` by itself on one line.

Paramters ending in `ENV` are placed in the `env-names-all.txt` file.

It appeared some of these might be environment names that are not documented.

To test for validity, errors related to invalid parameters for `sys_context()` are trapped.

What I found was that for `sys_context('userenv','parameter')` that an invalid parameter would raise `ORA-02003 invalid USERENV parameter`.

```sql
SQL# select sys_context('userenv','myparm') from dual;
select sys_context('userenv','myparm') from dual
                                            *
ERROR at line 1:
ORA-02003: invalid USERENV parameter

```

For any other environment name, an error may not be raised at all:

```sql
SQL# select sys_context('fake_env','myparm') from dual;

SYS_CONTEXT('FAKE_ENV','MYPARM')
--------------------------------------------------

1 row selected.
```

So the script `check-syscontext.pl` tests for a return value when environments other than `USERENV` are being tested.


## 12.1

This is a list of userenv paramaters from obtained from a 12.1 library

```text
strings /u01/app/oracle/product/12.1.0/c12/lib/libserver12.a  |  grep -E '^[A-Z_]{1}[A-Z_#]+$' | sort -u > symbols-libserver12.a.txt
```

## 19.12

The userenv parameters are scattered amongst several libraries

From Oracle Home:

```text
for file in $(find . -type f -name \*.a); do  (strings $file | grep -1 ^USERENV$) && { echo "### $file"; } ; done | grep '^###' > file-list.txt
for file in $(find . -type f -name \*.o); do  (strings $file | grep -1 ^USERENV$) && { echo "### $file"; } ; done | grep '^###' >> file-list.txt
for file in $(find . -type f -name \*.so); do  (strings $file | grep -1 ^USERENV$) && { echo "### $file"; } ; done | grep '^###' >> file-list.txt
for file in $(cut -d' ' -f2 file-list.txt ); do strings $file | grep -E '^[A-Z_]{1}[A-Z_#]+$' ; done | sort -u > symbols-libserver19.a.txt
```

Get a list of possible environment names

```text
grep -E '^[A-Z_#]+ENV$' symbols-libserver-12_19.txt > env-names.txt
```

## Test the Parameters

For best results, run this test on a client with the same version as the database, or run on the database server using OH/perl/bin/perl.

```text
./check-syscontext.pl --database p1 --username jkstill --password XXXX  2>syscontext-error-parameters.txt >syscontext-valid-parameters.txt
```

On the DB server

```text
$ORACLE_HOME/perl/bin/perl ./check-syscontext.pl --local-sysdba  2>syscontext-error-parameters-19.12.txt > syscontext-valid-parameters-19.12.txt
```

Generate a SQL script

```text
./check-syscontext.pl --database p1 --username jkstill --password XXXX  --sqlout 2>/dev/null > syscontext-valid-parameters.sql
```

Run the Generated SQL script
```sql
SQL# @syscontext-valid-parameters.sql

ENV_NAME        PARM_NAME                                PARM_VALUE
--------------- ---------------------------------------- --------------------------------------------------
USERENV         ACTION
USERENV         APPLICATION_NAME
USERENV         APPLY_CROSSEDITION_TRIGGER_OBJNO
USERENV         AUDITED_CURSORID
...
USERENV         SYSDBA_PRIVILEGE_SCOPE                   NONE
USERENV         SYSTEM_DATA_VISIBLE                      YES
USERENV         TERMINAL                                 pts/17
USERENV         UNIFIED_AUDIT_SESSIONID                  4261728554
USERENV         USERMODE                                 MULTI-USER
USERENV         USER_NICKNAME

115 rows selected.
```




