# TRABALHO 01 : ExpoApp
Trabalho desenvolvido durante a disciplina de BD
drive: https://drive.google.com/drive/folders/0B16vTe2Dzh37WjZ0ZTQ4TVNfeHM

    O referido projeto poderá ser:
        a) Um novo sistema/projeto 
        b) Uma expansão de sistema/projeto previamente desenvolvido em disciplinas anteriores 
        (ex: Expansão dos módulos do sistema desenvolvidos em BD1 - incremento mínimo de 50% nos 
        requisitos/complexidade)
    
    OBS Importantes: 
        a) Os projetos/sistemas propostos serão validados pelo professor e pela turma
        b) Se possível é interessante que os novos sistemas estejam correlacionados com alguma área 
        previamente estudada pelo aluno
        c) Caso dependa de alguma instituição/parceiro externo, a base de dados e informações pertinentes 
        a esta devem ser obtidas no prazo de até 15 dias apos aprovação da proposta do trabalho 
        (caso contrário, nova proposta deverá ser apresentada a turma implicando logicamente em um prazo 
        mais curto para realização das atividades e conclusão do trabalho)
    
DICA: 
    O kickstart normalmente lança inovaçôes em termos de Sofwares e Apps, portanto pode ser interessante 
    olhar os lançamentos recentes para incrementar as possibilidades e aguçar a criatividade, o que pode 
    auxiliar o grupo com novas ideias na solução proposta. Acesse os links abaixo do para explorar sobre apps e softwares no Kickstarter.
    <br>
    https://www.kickstarter.com/discover/categories/technology/software
    <br>
    https://www.kickstarter.com/discover/categories/technology/apps
# Sumário

### 1	COMPONENTES<br>
Thalles Vargas Ribeiro Lopes: tvrl07031997@gmail.com<br>
Yago Henrique Zanon Trarbach: yagozt.henrique@gmail.com

### 2	INTRODUÇÃO E MOTIVAÇAO<br>
O Aplicativo ExpoApp visa auxiliar as empresas na divulgação de exposições e criar uma forma de os clientes visitantes estarem mais informados sobre as mesmas, promovendo uma trocas de informações entre usuários através de comentarios e notas, disponibilização de informações sobre as peças que estão expostas nas determinadas exposições, o que os visitantes acharam de uma exposição e as peças que nela estavam, incentivando as visitas e melhorando a divulgação.<br>
      
### 3	MINI-MUNDO<br>
O ExpoApp é um aplicativo voltado para divulgação e informativo para pessoas interessadas nas visitas à exposições criadas por empresas, em se é exposto suas determinadas peças e obras, disponibilizando todas as suas informações referente a exposições e as peças. A utilização da aplicação é voltada para aplicativo de celular onde os clientes utilizaram para procurar as exposições e obras, e possui também o uso via site, onde na página principal será somente um atrativo mostrando algumas exposições que estão ocorrendo e informações do aplicativo, e haverá a parte para o login das empresas onde farão todo o seu controle de exposições como cadastrar exposição, cadastrar peça (na exposição escolhida), criar notificações para informar ao usuários e preencher as informações desejadas pela empresa. <br>

Na visão do cliente através do aplicativo mobile, ao abrir a aplicação pela primeira vez, o usuário terá a opção de fazer cadastro no sistema (podendo cadastrar diretamente sua conta do facebook) ou fazer login. Caso não seja cadastrado, irá para a página de cadastro onde fornecerá os seus dados, que são seu nome completo, email e data de nascimento, CPF e localização. O cliente já cadastrado, ao fazer o login, terá acesso ao seu perfil onde poderá escolher uma foto de perfil, escrever uma biografia, verificar as notificações das empresas que ele "segue", procurar as exposições mais próximas através de uma vista do mapa mostrando a localização e a rota para chegar, ou procurar através de uma lista com todos as empresas cadastradas no sistema e após ter escolhido uma empresa, escolhar uma exposição que ela está realizando . 
Cada empresa terá uma avaliação de 0 a 5 que é a média das avaliações de suas exposições, podendo também fazer comentários sobre as peças ou a exposição, além de ter a opção de “responder” o comentário de outro usuário, bem como,  marcando se ele foi útil ou não. Sendo assim, o usuário poderá ordenar pelos comentários mais bem avaliados ou mais recentes. <br>

O Cliente pode também verificar as peças que se encontram em uma exposição e obter as informações sobre a mesma, podendo fazer uma avaliação que conterá uma descrição e uma nota. Para ler as informações sobre as peças também terá disponível, na apresentação da peça localizada na aréa física da exposição, um QR Code onde após o cliente aproximar o aplicativo e ler o código, carregará todas as informações correspondentes. <br>

Para as empresas deverão realizar o cadastro no site informando seu CNPJ, nome, localização e criar a senha da conta. Após o cadastro da empresa terá a opção de criar eventos que inclue informação de nome, localização, horario de inicio(abertura), horario de fim(encerramento), se é uma exposição fixa(sem tempo determinado para finalizar) ou temporária, após realizar o cadastro da exposição, gerará uma notificação que chegará para os clientes seguidores informando sobre sua inicialização, ao editar a exposição já criada terá a opção de adicionar peças referentes a exposição, onde vai preencher todas as suas informações como nome, local de origem, descrição, data de fabricação e adicionar fotos dela. Poderá visualizar os comentários e avaliações feitas pelos clientes sobre as suas exposições, qual obra teve mais visualizações e os comentários feitos sobre as obras, e também escrever e editar as informações sobre a empresa.
<br>

### 4	RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

![ExpoAppBalsamiq](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/AppEventos.pdf "ExpoAppBalsamiq")


### 5	MODELO CONCEITUAL<br>
![Modelo Conceitual](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/eventosAPP.png "Modelo Conceitual")
#### 5.1 NOTACAO ENTIDADE RELACIONAMENTO
![Alt text](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/eventosAPP.png?raw=true "Modelo Conceitual")


#### 5.3 DECISÕES DE PROJETO

    Por uma falha na decisão do projeto na tabela de obra, foi optado por não separar a informação da obra referente ao autor da mesma, devida ao fato de que o foco da aplicação são as exposições que possuem aquela obra, não houve uma decisão inicial de guardar informações referentes aos autores.

#### 5.4 DESCRIÇÃO DOS DADOS 

    CLIENTE: Tabela que armazena as informações relativas ao usuário em geral da aplicação.
    LOGIN: Campo que armazena o login de cada cliente cadastrado. 
    SENHA: Campo que armazena a senha de cada cliene cadastrado.
    TIPO: Campo que armazena para cada usuário se ele é visitante ou empresa. 
    NOME: Campo que armazena o nome de cada usuário cadastrado.
    SEXO: Campo que armazena o sexo de cada usuário cadastrado.
    CPF: Campo que armazena o número de CPF para cada usuário cadastrado.
    Data_Nasc: Campo que armazena a data de nascimento do usuário cadastrado.
    
    -
    EMPRESA: Tabela que armazena as informações de cada empresa cadastrada.
    NOME: Campo que armazena o nome de cada empresa cadastrada.
    CNPJ: Campo que armazena o CNPJ de cada empresa cadastrada.
    CEP: Campo que armazena o CEP de cada empresa cadastrada.
    LOGRADOURO: Campo que armazena o endereço de cada empresa cadastrada. 
    SOBRE: Campo que armazena as informações sobre cada empresa cadastrada.
    DT_CADASTRO: Campo que armazena a data do cadastro de cada empresa.
    ID_BAIRRO: Campo que armazena o ID do bairro da empresa em questão.
    -
    BAIRRO: Tabela que armazena as informações dos bairros das empresas cadastradas.
    NOME: Campo que armazena o nome do bairro da empresa cadastrada.
    -
    CIDADE: Tabela que armazena as informações das cidades das empresas cadastradas.
    NOME: Campo que armazena o nome da cidade da empresa cadastrada.
    -
    ESTADO: Tabela que armazena as informações dos estados das empresas cadastradas.
    NOME: Campo que armazena o nome do estado da empresa cadastrada.
    -
    COMENTÁRIO: Tabela que armazena as informações dos comentários dos usuários cadastrados.
    DESCRICAÇÃO: Campo que armazena o comentário de cada usuário cadastrado.
    DATA_CADASTRO: Campo que armazena a data do comentário feito por cada usuário cadastrado.
    NOTA: Campo que armazena a nota dada pelo usuário cadastrado. 
    TIPO: Campo que armazena se o comentário feito por cada usuário cadastrado é comentário ou respota a um comentário.
    -
    EMPRESA: Tabela que armazena as informações de cada empresa cadastrada.
    LOGIN: Campo que armazena o login de cada empresa cadastrado. 
    SENHA: Campo que armazena a senha de cada empresa cadastrado.
    TIPO: Campo que armazena para cada usuário se ele é visitante ou empresa. 
    NOME: Campo que armazena o nome de cada empresa cadastrado.
    DT_CADASTRO: Campo que armazena a data em que cada empresa foi cadastrada.
    SOBRE: Campo que armazena um texto que descreve cada empresa cadastrada.
    LOGRADOURO: Campo que armazena o logradouro de cada empresa cadastrada.
    CEP: Campo que armazena o CEP de cada empresa cadastrada. 
    -
    EXPOSIÇÃO: Tabela que armazena as informações de cada exposição cadastrada.
    DESCRIÇÃO: Campo que armazena a descrição de cada exposição cadastrada.
    DT_INICIO: Campo que armazena a data de inicio de cada exposição cadastrada.
    HR_INICIO: Campo que armazena a hora de início de cada exposição cadastrada.
    HR_FINAL: Campo que armazena a hora de fechamento de cada exposição cadastrada.
    EXPOSIÇÃO_TIPO: Campo que armazena o tipo de cada exposição cadastrada, se é fixa ou temporária.
    LOGRADOURO: Campo que armazena o logradouro de cada exposição cadastrada.
    
    EXPOSIÇÃO TEMPORÁRIA: Tabela que armazena as informações de cada exposição cadastrada.
    DESCRIÇÃO: Campo que armazena a descrição de cada exposição cadastrada.
    DT_INICIO: Campo que armazena a data de inicio de cada exposição cadastrada.
    DT_FIM : Campo que armazena a data de fechamento de cada exposição cadastrada.
    HR_INICIO: Campo que armazena a hora de início de cada exposição cadastrada.
    HR_FINAL: Campo que armazena a hora de fechamento de cada exposição cadastrada.
    EXPOSIÇÃO_TIPO: Campo que armazena o tipo de cada exposição cadastrada, se é fixa ou temporária.
    LOGRADOURO: Campo que armazena o logradouro de cada exposição cadastrada.
    
    NOTIFICAÇÕES: Tabela que armazena as informações de cada notificação criada.
     DESCRIÇÃO: Campo que armazena a descrição de cada notificação.
    TIPO_ORIGEM: Tabela que armazena o tipo da origem de cada notificação criada, se é de empresa ou da exposição
    
    RESPOSTA: Tabela que armazena as informações de cada resposta criada.
    CURTIDA: Campo que armazena se a pessoa que respondeu o comentário achou útil ou não;
    DESCRIÇÃO: Campo que armazena a descrição de cada resposta. 
    
### 6	MODELO LÓGICO<br>
![Alt text](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/eventosAppLogico.png?raw=true "Modelo Lógico")<br>
### 7	MODELO FÍSICO<br>

![Modelo Físico](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/CreateExpoApp.sql "Modelo Físico")<br>
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Insert aplicado nas tabelas](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Inserts.sql "Inserts")<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Detalhamento sobre as informações e processo de obtenção ou geração dos dados.
        Referenciar todas as fontes referentes a:
        a) obtenção dos dados
        b) obtenção de códigos reutilizados
        c) fontes de estudo para desenvolvimento do projeto
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS (ARQUIVO ÚNICO COM):
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        c) inclusão das instruções para execução de outros procedimentos necessários
![SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Create_Inserts.sql?raw=true)

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	GERACAO DE DADOS (MÍNIMO DE 1,5 MILHÃO DE REGISTROS PARA PRINCIPAL RELAÇAO)<br>

	Inserir Clientes - 10 mil registros
	3 segundos 
	--------------------------------------------------------
	Inserir Comentarios - 100 mil registros
	9 segundos
	--------------------------------------------------------
	Inserir Notificação - 1.5 milhões de registros
	1 minuto e 14 segundos
	--------------------------------------------------------
	Inserir relação Cliente_Notificação - 1.5 milhões de registros
	10 segundos



## Data de Entrega: (18/09/2017)

<br>
OBS: Incluir para os tópicos 9.2 e 9.3 as instruções SQL + imagens (print da tela) mostrando os resultados.<br>

#### 9.2	SELECT DAS TABELAS COM PRIMEIROS 10 REGISTROS INSERIDOS <br> 
    select * from bairro limit 10; <br>

![Bairro Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Bairro.PNG) <br>
<br>

    select * from cidade limit 10;

![Cidade Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Cidade.PNG) <br>
    
    
    select * from bairro limit 10;

![Estado Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Estados.PNG) <br>
<br>    
    
    select * from cliente limit 10;

![Cliente Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Cliente.PNG) <br>
<br>    
    
    select * from comentario limit 10;

![Comentario Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Comentario.PNG) <br>
<br>
    
    select * from empresa limit 10;

![Empresa Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Empresa.PNG) <br>
<br>
    
    select * from exposicao limit 10;

![Exposicao Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Exposicao.PNG) <br>
<br>
    
    select * from exposicao_temp limit 10;

![Exposicao_temp Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Exposicao_temporaria.PNG) <br>
<br>
    
    select * from notificacao limit 10;

![Notificacao Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Notificação.PNG) <br>
<br>
    
    select * from peca limit 10; 

![Peca Limit10](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/Peça.PNG) <br>
<br>


#### 9.3	SELECT DAS VISÕES COM PRIMEIROS 10 REGISTROS DA VIEW <br>
        a) Descrição da view sobre que grupos de usuários (operacional/estratégico) <br>
        e necessidade ela contempla.
        b) Descrição das permissões de acesso e usuários correlacionados (após definição <br>
        destas características)
    Data de Entrega: (Data a ser definida)
	
	<br>
	CREATE VIEW empresa_qtd_seguidores AS (
	SELECT empresa.nome, COUNT(*) quantidade_seguidores
	FROM empresa
	INNER JOIN cliente_empresa
	on empresa.id = cliente_empresa.fk_empresa_id
	GROUP BY empresa.id
	ORDER BY quantidade_seguidores DESC
	  );

select * from empresa_qtd_seguidores <br>

![Empresa seguidores](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Views/empresa_qtd_seguidores.PNG) <br>

	////////////////////////////////////////////////////////////

		CREATE VIEW cidade_qtd_empresas AS (
	SELECT cidade.nome, COUNT(*) quantidade_empresas
	from empresa
	INNER JOIN bairro
	on empresa.fk_bairro_id = bairro.id
	INNER JOIN cidade
	on bairro.fk_cidade_id = cidade.id
	GROUP BY cidade.id
	ORDER BY quantidade_empresas    
	);

select * from cidade_qtd_empresas <br>

![Cidade empresas](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Views/cidade_qtd_empresas.PNG) <br>

	////////////////////////////////////////////////////////////

	CREATE VIEW historico_notificao_empresa as (
	SELECT empresa.nome, notificacao.id, notificacao.tipo, notificacao.tipo_origem, notificacao.descricao, notificacao.data_cadastro
	FROM empresa
	INNER JOIN notificacao
	on empresa.id = notificacao.id_origem and notificacao.tipo_origem = 1
	ORDER BY empresa.nome
	);

select * from historico_notificao_empresa <br>

![Historico notificacao empresa](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Views/historico_notificao_empresa.PNG) <br>

	////////////////////////////////////////////////////////////

	create view notificacao_exposicao_cliente as (
	select a.cpf,a.nome,d.descricao Exposicao ,c.descricao Notificacao ,c.data_cadastro from cliente a
	join cliente_notificacao b on a.id = b.fk_cliente_id
	join notificacao c on b.fk_notificacao_id = c.id
	join exposicao d on c.id_origem = d.id and c.tipo_origem = 2
	order by a.cpf, c.data_cadastro
	)

select * from notificacao_exposicao_cliente <br>

![Notificacao exposicao cliente](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Views/notificacao_exposicao_cliente.PNG)


<br>

#### 9.4	LISTA DE CODIGOS DAS FUNÇÕES, ASSERÇOES E TRIGGERS<br>
    Detalhamento sobre funcionalidade de cada código.
    a) Objetivo
    b) Código do objeto (função/trigger/asserção)
    c) exemplo de dados para aplicação
    d) resultados em forma de tabela/imagem
  
    [FUNÇÃO CHAMADA QUANDO A EMPRESA DESEJA ALTERAR SUA DESCRIÇÃO POR MEIO DO SITE, LOGADA EM SUA CONTA]
    
    CREATE OR REPLACE FUNCTION AlteraEmpresa(procura integer,novo_sobre varchar)
    Returns void AS '
    update empresa set sobre = novo_sobre where id = procura;
    ' LANGUAGE SQL;	
    
    ////////////////////////////////////////////////////////////////////////
    [FUNÇÃO CHAMADA QUANDO O USUÁRIO DESEJA EDITAR O COMENTÁRIO FEITO]
    
    CREATE OR REPLACE FUNCTION AlteraComentario(procura integer,nova_descricao varchar)
    Returns void AS '
    update comentario set descricao = nova_descricao where id =procura;
    ' LANGUAGE SQL;	
    
    //////////////////////////////////////////////////////////////////////// 
    [FUNÇÃO QUE RETORNA EM FORMA DE TABELA AS NOTAS DE UMA EXPOSIÇÃO E A MÉDIA DESSAS NOTAS]  
   
    CREATE OR REPLACE FUNCTION CalculaNotaEmpresa(procura integer)
    RETURNS TABLE(exposicao integer, media numeric) AS $$
    BEGIN
    	RETURN QUERY SELECT fk_exposicao_id, avg(nota) $nota from nota_exposicao
		where FK_EXPOSICAO_id = procura
    	group by fk_exposicao_id;
    END
    $$ LANGUAGE 'plpgsql';

    
    //////////////////////////////////////////////////////////////////////// 
	[FUNÇÂO QUE RETORNA UMA TABELA COM OS COMENTÁRIOS FEITOS ENTRE DUAS DATAS ESPECIFICADAS]
	
	CREATE OR REPLACE FUNCTION  busca_comentario_data(dia1 TimeStamp, dia2 TimeStamp)
	RETURNS SETOF comentario AS $$
	    BEGIN
		RETURN QUERY SELECT * from comentario
		where data_cadastro < dia2 AND data_cadastro > dia1;
	    END
	$$ LANGUAGE 'plpgsql';

	SELECT busca_comentario_data('2017-05-10','2017-06-14');

![Função busca_comentario](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/busca_comentario_data.PNG)

    /////////////////////////////////////////////////////////////////////////
    [TRIGGER PARA VALIDAR CADASTRO DE VISITANTE]
    
	CREATE FUNCTION valida_criacao_usuario() RETURNS trigger AS $BODY$
	     BEGIN
		-- Verificar se foi fornecido o login, senha, email, cpf, data_nascimento foram informados
		IF NEW.login IS NULL THEN
		    RAISE EXCEPTION 'O login do usuário não pode ser nulo';
		END IF;
		IF NEW.senha IS NULL THEN
		    RAISE EXCEPTION 'A senha do usuário precisa ser preenchida';
		END IF;

		IF NEW.cpf IS NULL THEN
		    RAISE EXCEPTION 'O cpf do usuário não pode ser nulo';
		END IF;

		IF NEW.email IS NULL THEN
		    RAISE EXCEPTION 'O email do usuário não pode ser nulo';
		END IF;

		IF NEW.data_nascimento IS NULL THEN
		    RAISE EXCEPTION 'a data de nascimento do usuário não pode ser nulo';
		END IF;
		--  
		-- Verifica tamanho da senha e cpf
		--      
		IF char_length(NEW.senha) < 3 THEN
		    RAISE EXCEPTION 'A senha não pode ter menos que 4 dígitos';
		END IF;


		IF char_length(NEW.cpf) <> 11 THEN
		    RAISE EXCEPTION 'CPF inválido';
		END IF;

		IF NEW.email NOT LIKE '%@%.%' THEN
				RAISE EXCEPTION 'Email inválido';
			END IF;	
		RETURN NULL;
   	 END;
	    $BODY$ LANGUAGE 'plpgsql';

	 CREATE TRIGGER trigger_valida_cadastro
	  BEFORE INSERT OR UPDATE ON cliente
	  FOR EACH ROW
	  EXECUTE PROCEDURE valida_criacao_usuario();
	  
/////////////////////////////////////////////////////////////////////////

   	 [TRIGGER PARA VALIDAR CADASTRO DE EMPRESA] 
	 

	CREATE FUNCTION valida_criacao_empresa() RETURNS trigger AS $BODY$
		     BEGIN
			-- Verificar se foi fornecido o login, senha, email, cpf, data_nascimento foram informados
			IF NEW.login IS NULL THEN
			    RAISE EXCEPTION 'O login do usuário não pode ser nulo';
			END IF;
			IF NEW.senha IS NULL THEN
			    RAISE EXCEPTION 'A senha do usuário precisa ser preenchida';
			END IF;

			IF NEW.cpf IS NULL THEN
			    RAISE EXCEPTION 'O cpf do usuário não pode ser nulo';
			END IF;

			IF NEW.email IS NULL THEN
			    RAISE EXCEPTION 'O email do usuário não pode ser nulo';
			END IF;

			IF NEW.data_nascimento IS NULL THEN
			    RAISE EXCEPTION 'a data de nascimento do usuário não pode ser nulo';
			END IF;
			--  
			-- Verifica tamanho da senha e cpf
			--      
			IF char_length(NEW.senha) < 3 THEN
			    RAISE EXCEPTION 'A senha não pode ter menos que 4 dígitos';
			END IF;


			IF char_length(NEW.cnpj) <> 14 THEN
			    RAISE EXCEPTION 'CPF inválido';
			END IF;

			IF NEW.email NOT LIKE '%@%.%' THEN
					RAISE EXCEPTION 'Email inválido';
				END IF;	
			RETURN NULL;
		 END;
		    $BODY$ LANGUAGE 'plpgsql';


		 CREATE TRIGGER trigger_valida_cadastro_empresa
		  BEFORE INSERT OR UPDATE ON empresa
		  FOR EACH ROW
		  EXECUTE PROCEDURE valida_criacao_empresa();
        
<br>

#### 9.5	Administração do banco de dados<br>
        Descrição detalhada sobre como serão executadas no banco de dados as <br>
        seguintes atividades.
        a) Segurança e autorização de acesso:
        b) Estimativas de aquisição de recursos para armazenamento e processamento da informação
        c) Planejamento de rotinas de manutenção e monitoramento do banco
        d) Plano com frequencia de análises visando otimização de performance
 ![Segurança e autorização](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/ControleAcesso "Segurança")
 <br>
Foi criado um grupo de adm onde possui todas as funcionalidades administrativas do banco de dados, e foi criado um grupo composto por dois analistas onde terão acesso somente a visualização (SELECT) a fim de consultar os dados. Qualquer nova criação de procedures, funcções, exclusão e atualização, terá que ser feito um pedido para o admin para ter um maior controle.
        
<br>

#### 9.6	Backup do Banco de Dados<br>
        Detalhamento do backup.
        a) Tempo
        b) Tamanho
        c) Teste de restauração (backup)
        d) Tempo para restauração
        e) Teste de restauração (script sql)
        f) Tempo para restauração (script sql)
	
	-----------------------------
	Arquivo .file
	13.526 segundos
	36mb
	Restauração: 17.303 segundos
	-----------------------------
	Arquivo .sql
	100mb
	1s
	Restauração: segundos
<br>

Data de Entrega: (Data a ser definida)
<br>

#### 9.7	APLICAÇAO DE ÍNDICES E TESTES DE PERFORMANCE<br>
    a) Lista de índices, tipos de índices com explicação de porque foram implementados
    b) Performance esperada VS Resultados obtidos
    c) Tabela de resultados comparando velocidades antes e depois da aplicação dos índices.
![Indices](https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Indeces.sql
 "Indices")
 
 ![Indices]( https://github.com/expoapp/Trabalho-BD2-ExpoApp/blob/master/Imagens/Modelos/25181947_1507722225943050_173383548_n.jpg)
 

    
<br>
    Data de Entrega: (Data a ser definida)
<br>   

#### 9.8	ANÁLISE DOS DADOS COM ORANGE<br>    
        a) captura das informaçõs
        b) integração com banco de dados em desenvolvimento
        c) aplicação de algoritmos e interpretação dos resultados
        c) atualização da documentação do trabalho incluindo a mineração de dados
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO/ SLIDES E ENTREGA FINAL<br>
<br>
    Data de Entrega: (Data a ser definida)
<br>

### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>  

       
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/

### OBSERVAÇÕES IMPORTANTES
	Apagar os selects escritos a mão
	View de historico de comentario, informação desnecessária
	View notificação
	
	
#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. Caso existam arquivos com conteúdos sigilosos, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário deste GIT, para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://sis4.com/brModelo/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")






































.





























































































