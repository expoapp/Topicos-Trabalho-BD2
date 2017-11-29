REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f peca.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++

REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f comentario.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++

REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f notificacao.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++