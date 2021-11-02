CLS
@ECHO OFF
rem SET /P Server = .\SQLEXPRESS
ECHO Database creation...
sqlcmd -S .\SQLEXPRESS -i %~dp0Database\Database.sql

ECHO Tables creation...
cd /d %~dp0Tables
for /r %%i in (*) do sqlcmd -S .\SQLEXPRESS -d Metrology -i %%i

ECHO Foreign keys creation...
cd /d %~dp0ForeignKeys
for /r %%i in (*) do sqlcmd -S .\SQLEXPRESS -d Metrology -i %%i
PAUSE
