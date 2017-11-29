REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f cliente_empresa.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++

REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f cliente_notificacao.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++

REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f resposta_comentario.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++

REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f nota_peca.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++

REM +++++++++++++++++++++++++++++++++++++++++++++++
echo "inicio do processo" %time%
set TEMP_INICIO=%time%
psql -h localhost -d ExpoAppProd -U postgres -p 5432 -q -W -f nota_exposicao.sql
echo "inicio do processo" %TEMP_INICIO%
echo "fim do processo" %time%
REM +++++++++++++++++++++++++++++++++++++++++++++++