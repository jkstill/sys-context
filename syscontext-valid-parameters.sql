
col parm_value format a50
col env_name format a15
col parm_name format a40
set linesize 200 trimspool off
set pagesize 200

select 'USERENV' "ENV_NAME", 'ACTION' "PARM_NAME", sys_context('USERENV','ACTION') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'APPLICATION_NAME' "PARM_NAME", sys_context('USERENV','APPLICATION_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'APPLY_CROSSEDITION_TRIGGER_OBJNO' "PARM_NAME", sys_context('USERENV','APPLY_CROSSEDITION_TRIGGER_OBJNO') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'AUDITED_CURSORID' "PARM_NAME", sys_context('USERENV','AUDITED_CURSORID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'AUTHENTICATED_IDENTITY' "PARM_NAME", sys_context('USERENV','AUTHENTICATED_IDENTITY') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'AUTHENTICATION_DATA' "PARM_NAME", sys_context('USERENV','AUTHENTICATION_DATA') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'AUTHENTICATION_METHOD' "PARM_NAME", sys_context('USERENV','AUTHENTICATION_METHOD') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'BG_JOB_ID' "PARM_NAME", sys_context('USERENV','BG_JOB_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CDB_CHARSET' "PARM_NAME", sys_context('USERENV','CDB_CHARSET') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CDB_NAME' "PARM_NAME", sys_context('USERENV','CDB_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CDB_NCHAR_CHARSET' "PARM_NAME", sys_context('USERENV','CDB_NCHAR_CHARSET') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CHUNK_ID' "PARM_NAME", sys_context('USERENV','CHUNK_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CLIENT_IDENTIFIER' "PARM_NAME", sys_context('USERENV','CLIENT_IDENTIFIER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CLIENT_INFO' "PARM_NAME", sys_context('USERENV','CLIENT_INFO') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CLIENT_PROGRAM_NAME' "PARM_NAME", sys_context('USERENV','CLIENT_PROGRAM_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CLIENT_REGION' "PARM_NAME", sys_context('USERENV','CLIENT_REGION') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CLOUD_SERVICE' "PARM_NAME", sys_context('USERENV','CLOUD_SERVICE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CON_DBID' "PARM_NAME", sys_context('USERENV','CON_DBID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CON_ID' "PARM_NAME", sys_context('USERENV','CON_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CON_NAME' "PARM_NAME", sys_context('USERENV','CON_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CREDENTIAL_GUID' "PARM_NAME", sys_context('USERENV','CREDENTIAL_GUID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CREDENTIAL_NICKNAME' "PARM_NAME", sys_context('USERENV','CREDENTIAL_NICKNAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CREDENTIAL_PRINCIPAL' "PARM_NAME", sys_context('USERENV','CREDENTIAL_PRINCIPAL') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CREDENTIAL_SUBSCRIBER' "PARM_NAME", sys_context('USERENV','CREDENTIAL_SUBSCRIBER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CREDENTIAL_TYPE' "PARM_NAME", sys_context('USERENV','CREDENTIAL_TYPE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_BIND' "PARM_NAME", sys_context('USERENV','CURRENT_BIND') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_CURSOR' "PARM_NAME", sys_context('USERENV','CURRENT_CURSOR') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_CURSOR_ITERATION' "PARM_NAME", sys_context('USERENV','CURRENT_CURSOR_ITERATION') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_EDITION_ID' "PARM_NAME", sys_context('USERENV','CURRENT_EDITION_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_EDITION_NAME' "PARM_NAME", sys_context('USERENV','CURRENT_EDITION_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_SCHEMA' "PARM_NAME", sys_context('USERENV','CURRENT_SCHEMA') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_SCHEMAID' "PARM_NAME", sys_context('USERENV','CURRENT_SCHEMAID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_SQL' "PARM_NAME", sys_context('USERENV','CURRENT_SQL') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_SQL_LENGTH' "PARM_NAME", sys_context('USERENV','CURRENT_SQL_LENGTH') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_USER' "PARM_NAME", sys_context('USERENV','CURRENT_USER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'CURRENT_USERID' "PARM_NAME", sys_context('USERENV','CURRENT_USERID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DATABASE_ROLE' "PARM_NAME", sys_context('USERENV','DATABASE_ROLE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DBID' "PARM_NAME", sys_context('USERENV','DBID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DBLINK_INFO' "PARM_NAME", sys_context('USERENV','DBLINK_INFO') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DB_DOMAIN' "PARM_NAME", sys_context('USERENV','DB_DOMAIN') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DB_NAME' "PARM_NAME", sys_context('USERENV','DB_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DB_REGION' "PARM_NAME", sys_context('USERENV','DB_REGION') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DB_SUPPLEMENTAL_LOG_LEVEL' "PARM_NAME", sys_context('USERENV','DB_SUPPLEMENTAL_LOG_LEVEL') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'DB_UNIQUE_NAME' "PARM_NAME", sys_context('USERENV','DB_UNIQUE_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'ECID_ID' "PARM_NAME", sys_context('USERENV','ECID_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'ECID_SEQ' "PARM_NAME", sys_context('USERENV','ECID_SEQ') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'ENTERPRISE_IDENTITY' "PARM_NAME", sys_context('USERENV','ENTERPRISE_IDENTITY') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'ENTRYID' "PARM_NAME", sys_context('USERENV','ENTRYID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'EXTERNAL_NAME' "PARM_NAME", sys_context('USERENV','EXTERNAL_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'FG_JOB_ID' "PARM_NAME", sys_context('USERENV','FG_JOB_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'FROM_CROSSEDITION_TRIGGER_OBJNO' "PARM_NAME", sys_context('USERENV','FROM_CROSSEDITION_TRIGGER_OBJNO') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'GLOBAL_CONTEXT_MEMORY' "PARM_NAME", sys_context('USERENV','GLOBAL_CONTEXT_MEMORY') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'GLOBAL_UID' "PARM_NAME", sys_context('USERENV','GLOBAL_UID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'HOST' "PARM_NAME", sys_context('USERENV','HOST') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IDENTIFICATION_TYPE' "PARM_NAME", sys_context('USERENV','IDENTIFICATION_TYPE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IDENTITY_SERVICE_TYPE' "PARM_NAME", sys_context('USERENV','IDENTITY_SERVICE_TYPE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'INSTANCE' "PARM_NAME", sys_context('USERENV','INSTANCE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'INSTANCE_NAME' "PARM_NAME", sys_context('USERENV','INSTANCE_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IP_ADDRESS' "PARM_NAME", sys_context('USERENV','IP_ADDRESS') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'ISCELL' "PARM_NAME", sys_context('USERENV','ISCELL') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'ISDBA' "PARM_NAME", sys_context('USERENV','ISDBA') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_APPLICATION_CAPTURE_ON' "PARM_NAME", sys_context('USERENV','IS_APPLICATION_CAPTURE_ON') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_APPLICATION_PDB' "PARM_NAME", sys_context('USERENV','IS_APPLICATION_PDB') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_APPLICATION_ROOT' "PARM_NAME", sys_context('USERENV','IS_APPLICATION_ROOT') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_APPLY_SERVER' "PARM_NAME", sys_context('USERENV','IS_APPLY_SERVER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_DG_ROLLING_UPGRADE' "PARM_NAME", sys_context('USERENV','IS_DG_ROLLING_UPGRADE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_GLOBAL_SERVICE' "PARM_NAME", sys_context('USERENV','IS_GLOBAL_SERVICE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_LEAD_CDB' "PARM_NAME", sys_context('USERENV','IS_LEAD_CDB') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'IS_MEMBER_CDB' "PARM_NAME", sys_context('USERENV','IS_MEMBER_CDB') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'LANG' "PARM_NAME", sys_context('USERENV','LANG') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'LANGUAGE' "PARM_NAME", sys_context('USERENV','LANGUAGE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'LDAP_SERVER_TYPE' "PARM_NAME", sys_context('USERENV','LDAP_SERVER_TYPE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'MODULE' "PARM_NAME", sys_context('USERENV','MODULE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'NETWORK_PROTOCOL' "PARM_NAME", sys_context('USERENV','NETWORK_PROTOCOL') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'NLS_CALENDAR' "PARM_NAME", sys_context('USERENV','NLS_CALENDAR') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'NLS_CURRENCY' "PARM_NAME", sys_context('USERENV','NLS_CURRENCY') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'NLS_DATE_FORMAT' "PARM_NAME", sys_context('USERENV','NLS_DATE_FORMAT') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'NLS_DATE_LANGUAGE' "PARM_NAME", sys_context('USERENV','NLS_DATE_LANGUAGE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'NLS_SORT' "PARM_NAME", sys_context('USERENV','NLS_SORT') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'NLS_TERRITORY' "PARM_NAME", sys_context('USERENV','NLS_TERRITORY') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'ORACLE_HOME' "PARM_NAME", sys_context('USERENV','ORACLE_HOME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'OS_USER' "PARM_NAME", sys_context('USERENV','OS_USER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PLATFORM_SLASH' "PARM_NAME", sys_context('USERENV','PLATFORM_SLASH') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'POLICY_INVOKER' "PARM_NAME", sys_context('USERENV','POLICY_INVOKER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PROXY_ENTERPRISE_IDENTITY' "PARM_NAME", sys_context('USERENV','PROXY_ENTERPRISE_IDENTITY') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PROXY_USER' "PARM_NAME", sys_context('USERENV','PROXY_USER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PROXY_USERID' "PARM_NAME", sys_context('USERENV','PROXY_USERID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_QC_INSTANCE_ID' "PARM_NAME", sys_context('USERENV','PX_QC_INSTANCE_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_QC_SID' "PARM_NAME", sys_context('USERENV','PX_QC_SID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_SERVER_GROUP_NUMBER' "PARM_NAME", sys_context('USERENV','PX_SERVER_GROUP_NUMBER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_SERVER_LOCAL_NUMBER' "PARM_NAME", sys_context('USERENV','PX_SERVER_LOCAL_NUMBER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_SERVER_LOCAL_SIBLING_COUNT' "PARM_NAME", sys_context('USERENV','PX_SERVER_LOCAL_SIBLING_COUNT') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_SERVER_NUMBER' "PARM_NAME", sys_context('USERENV','PX_SERVER_NUMBER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_SERVER_SET_NUMBER' "PARM_NAME", sys_context('USERENV','PX_SERVER_SET_NUMBER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'PX_SERVER_SIBLING_COUNT' "PARM_NAME", sys_context('USERENV','PX_SERVER_SIBLING_COUNT') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SCHEDULER_JOB' "PARM_NAME", sys_context('USERENV','SCHEDULER_JOB') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SERVER_HOST' "PARM_NAME", sys_context('USERENV','SERVER_HOST') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SERVER_HOST_IP' "PARM_NAME", sys_context('USERENV','SERVER_HOST_IP') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SERVICE_NAME' "PARM_NAME", sys_context('USERENV','SERVICE_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SESSIONID' "PARM_NAME", sys_context('USERENV','SESSIONID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SESSION_DEFAULT_COLLATION' "PARM_NAME", sys_context('USERENV','SESSION_DEFAULT_COLLATION') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SESSION_EDITION_ID' "PARM_NAME", sys_context('USERENV','SESSION_EDITION_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SESSION_EDITION_NAME' "PARM_NAME", sys_context('USERENV','SESSION_EDITION_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SESSION_SCHEMA' "PARM_NAME", sys_context('USERENV','SESSION_SCHEMA') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SESSION_USER' "PARM_NAME", sys_context('USERENV','SESSION_USER') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SESSION_USERID' "PARM_NAME", sys_context('USERENV','SESSION_USERID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SQL_TRANSLATION_PROFILE_ID' "PARM_NAME", sys_context('USERENV','SQL_TRANSLATION_PROFILE_ID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SQL_TRANSLATION_PROFILE_NAME' "PARM_NAME", sys_context('USERENV','SQL_TRANSLATION_PROFILE_NAME') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'STATEMENTID' "PARM_NAME", sys_context('USERENV','STATEMENTID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SYSDBA_PRIVILEGE_SCOPE' "PARM_NAME", sys_context('USERENV','SYSDBA_PRIVILEGE_SCOPE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'SYSTEM_DATA_VISIBLE' "PARM_NAME", sys_context('USERENV','SYSTEM_DATA_VISIBLE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'TERMINAL' "PARM_NAME", sys_context('USERENV','TERMINAL') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'UNIFIED_AUDIT_SESSIONID' "PARM_NAME", sys_context('USERENV','UNIFIED_AUDIT_SESSIONID') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'USERMODE' "PARM_NAME", sys_context('USERENV','USERMODE') "PARM_VALUE" from dual
union all
select 'USERENV' "ENV_NAME", 'USER_NICKNAME' "PARM_NAME", sys_context('USERENV','USER_NICKNAME') "PARM_VALUE" from dual
/
