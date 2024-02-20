-- put database in archive mode , recommended by oracle
alter system set db_recovery_file_dest_size=36g scope=both;
alter system set db_recovery_file_dest='/data/recovery' scope=both;
shutdown immediate;
startup mount;
alter database archivelog;
alter database open;