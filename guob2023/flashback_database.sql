ALTER DATABASE FLASHBACK ON;
SELECT flashback_on, current_scn FROM V$DATABASE;
SELECT OLDEST_FLASHBACK_SCN, OLDEST_FLASHBACK_TIME FROM V$FLASHBACK_DATABASE_LOG;
SHOW PARAMETER DB_FLASHBACK_RETENTION_TARGET;

RMAN target /
SHUTDOWN IMMEDIATE;
STARTUP MOUNT;
FLASHBACK DATABASE TO SCN XXX;
ALTER DATABASE OPEN READ ONLY;
------- CASO ESTEJA ONDE QUER

ALTER DATABASE OPEN RESETLOGS;	
------  CASO NAO ESTEJA ONDE NAO QUER
RECOVER DATABASE;

-----PDB
ALTER PLUGGABLE DATABASE pdb1 CLOSE;
FLASHBACK PLUGGABLE DATABASE pdb1 TO SCN 1663945;
ALTER PLUGGABLE DATABASE pdb1 OPEN RESETLOGS;