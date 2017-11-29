REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f CreateExpoApp.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++
