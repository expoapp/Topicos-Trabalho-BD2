-- CREATES

CREATE TABLE EMPRESA (
    nome VARCHAR,
    cnpj VARCHAR,
    dt_cadastro TIMESTAMP,
    sobre VARCHAR,
    logradouro VARCHAR,
    cep VARCHAR,
    ID SERIAL PRIMARY KEY,
    FK_BAIRRO_id INTEGER
) INHERITS (USUARIO);

CREATE TABLE PECA (
    autor VARCHAR,
    nome VARCHAR,
    ID SERIAL PRIMARY KEY,
    dt_criacao DATE,
    sobre VARCHAR,
    FK_EXPOSICAO_id INTEGER
);

CREATE TABLE IMAGEM (
    ID SERIAL PRIMARY KEY,
    link_imagem VARCHAR,
    tipo INTEGER,
    FK_EMPRESA_id INTEGER,
    FK_PECA_id INTEGER
);

CREATE TABLE USUARIO (
    login VARCHAR,
    email VARCHAR,
    senha VARCHAR,
    tipo INTEGER,
    ID SERIAL PRIMARY KEY,
    dt_cadastro TIMESTAMP
);

CREATE TABLE NOTIFICACAO (
    data TIMESTAMP,
    descricao VARCHAR,
    id SERIAL PRIMARY KEY,
    tipo INTEGER,
    id_origem INTEGER
);

CREATE TABLE EXPOSICAO (
    id SERIAL PRIMARY KEY,
    tipo INTEGER,
    descricao VARCHAR,
    dt_inicio DATE,
    Hr_inicio TIME,
    Hr_final TIME,
    logradouro VARCHAR,
    FK_EMPRESA_id INTEGER,
    fk_bairro_id INTEGER
);

CREATE TABLE EXPOSICAO_TEMP (
    dt_fim DATE,
    id SERIAL PRIMARY KEY
) INHERITS (EXPOSICAO);

CREATE TABLE CLIENTE (
    data_nascimento DATE,
    sexo CHAR,
    cpf VARCHAR,
    endereco VARCHAR,
    ID SERIAL PRIMARY KEY,
    logradouro VARCHAR,
    nome VARCHAR,
    Fk_bairiro_id INTEGER
) INHERITS (USUARIO);

CREATE TABLE BAIRRO (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR,
    FK_CIDADE_id INTEGER
);

CREATE TABLE CIDADE (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR,
    FK_ESTADO_id INTEGER
);

CREATE TABLE ESTADO (
    ID SERIAL PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Comentario (
    ID SERIAL PRIMARY KEY,
    descricao VARCHAR,
    data_cadastro TIMESTAMP,
    nota INTEGER,
    tipo INTEGER,
    FK_CLIENTE_id INTEGER
);

CREATE TABLE Resposta (
    FK_Comentario_id_origem INTEGER,
    FK_Comentario_id_destino INTEGER,
    Curtida BOOLEAN,
    Descricao VARCHAR
);

CREATE TABLE Cliente_Notificacao (
    FK_CLIENTE_id INTEGER,
    FK_NOTIFICACAO_id INTEGER
);

CREATE TABLE Cliente_Empresa (
    FK_CLIENTE_id INTEGER,
    FK_EMPRESA_id INTEGER
);
 
ALTER TABLE EMPRESA ADD CONSTRAINT FK_EMPRESA_1
    FOREIGN KEY (FK_BAIRRO_id)
    REFERENCES BAIRRO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PECA ADD CONSTRAINT FK_PECA_1
    FOREIGN KEY (FK_EXPOSICAO_id)
    REFERENCES EXPOSICAO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE IMAGEM ADD CONSTRAINT FK_IMAGEM_1
    FOREIGN KEY (FK_EMPRESA_id, FK_EMPRESA_FK_USUARIO_id???)
    REFERENCES EMPRESA (id, ???)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE IMAGEM ADD CONSTRAINT FK_IMAGEM_2
    FOREIGN KEY (FK_PECA_id)
    REFERENCES PECA (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE EXPOSICAO ADD CONSTRAINT FK_EXPOSICAO_1
    FOREIGN KEY (fk_bairro_id)
    REFERENCES BAIRRO (id);
 
ALTER TABLE EXPOSICAO ADD CONSTRAINT FK_EXPOSICAO_2
    FOREIGN KEY (FK_EMPRESA_id)
    REFERENCES EMPRESA (id);
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_1
    FOREIGN KEY (Fk_bairiro_id)
    REFERENCES BAIRRO (id);
 
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_1
    FOREIGN KEY (FK_CIDADE_id)
    REFERENCES CIDADE (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE_1
    FOREIGN KEY (FK_ESTADO_id)
    REFERENCES ESTADO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Comentario ADD CONSTRAINT FK_Comentario_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id);
 
ALTER TABLE Resposta ADD CONSTRAINT FK_Resposta_0
    FOREIGN KEY (FK_Comentario_id_origem)
    REFERENCES Comentario (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Resposta ADD CONSTRAINT FK_Resposta_1
    FOREIGN KEY (FK_Comentario_id_destino)
    REFERENCES Comentario (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Cliente_Notificacao ADD CONSTRAINT FK_Cliente_Notificacao_0
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id);
 
ALTER TABLE Cliente_Notificacao ADD CONSTRAINT FK_Cliente_Notificacao_1
    FOREIGN KEY (FK_NOTIFICACAO_id)
    REFERENCES NOTIFICACAO (id);
 
ALTER TABLE Cliente_Empresa ADD CONSTRAINT FK_Cliente_Empresa_0
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id);
 
ALTER TABLE Cliente_Empresa ADD CONSTRAINT FK_Cliente_Empresa_1
    FOREIGN KEY (FK_EMPRESA_id)
    REFERENCES EMPRESA (id);


-- Inserts ----------------------------------------------------------------

insert into cliente(login,email,senha,tipo,id,data_nascimento,sexo,cpf,nome,fk_bairro_id) values 
('yago','yago@gmail.com.br','123',1,3,'1995-05-22','M','951385357','Yago',69),
('thalles','thalles@gmail.com.br','123',1,4,'1996-04-30','M','654357159','Thalles',66),
('gabriel','gabriel@gmail.com.br','123',1,6,'1997-06-15','M','954687621','Gabriel',66),
('ana','ana@gmail.com.br','123',1,9,'1996-03-24','F','986154266','Ana',66),
('gary','gary@gmail.com.br','123',1,1,'1997-01-23','M','123456789','Gary',51),
('jose','jose@gmail.com.br','123',1,2,'1996-11-10','M','456789123','Jose',51),
('luiz','luiz@gmail.com.br','123',1,5,'1997-07-31','M','356156657','Luiz',15),
('paulo','paulo@gmail.com.br','123',1,7,'1995-02-02','M','459684159','Paulo',1),
('brenno','brenno@gmail.com.br','123',1,8,'1997-11-06','M','653875542','Brenno',67),
('icaro','icaro@gmail.com.br','123',1,10,'1997-06-20','M','455566788','Icaro',63)

insert into estado(id,sigla,nome) values 
(1,'AC','Acre'),
(2,'AL','Alagoas'),
(3,'AP','Amapá'),
(4,'AM','Amazonas'),
(5,'BA','Bahia'),
(6,'CE','Ceará'),
(7,'DF','Distrito Federal'),
(8,'ES','Espírito Santo'),
(9,'GO','Goiás'),
(10,'MA','Maranhão'),
(11,'MT','Mato Grosso'),
(12,'MS','Mato Grosso do Sul'),
(13,'MG','Minas Gerais'),
(14,'PA','Pará'),
(15,'PB','Paraíba'),
(16,'PR','Paraná'),
(17,'PE','Pernambuco'),
(18,'PI','Piauí'),
(19,'RJ','Rio de Janeiro'),
(20,'RN','Rio Grande do Norte'),
(21,'RS','Rio Grande do Sul'),
(22,'RO','Rondônia'),
(23,'RR','Roraima'),
(24,'SC','Santa Catarina'),
(25,'SP','São Paulo'),
(26,'SE','Sergipe'),
(27,'TO','Tocantins')

insert into cidade(id,nome,fk_estado_id) values 
(1,'Afonso Claudio',8),
(2,'Agua Doce do Norte',8),
(3,'Aguia Branca',8),
(4,'Alegre',8),
(5,'Alfredo Chaves',8),
(6,'Alto Rio Novo',8),
(7,'Anchieta',8),
(8,'Apiaca',8),
(9,'Aracruz',8),
(10,'Atilio Vivacqua',8),
(11,'Baixo Guandu',8),
(12,'Barra de Sao Francisco',8),
(13,'Boa Esperanca',8),
(14,'Bom Jesus do Norte',8),
(15,'Brejetuba',8),
(16,'Cachoeiro de Itapemirim',8),
(17,'Cariacica',8),
(18,'Castelo',8),
(19,'Colatina',8),
(20,'Conceicao da Barra',8),
(21,'Conceicao do Castelo',8),
(22,'Divino de Sao Lourenco',8),
(23,'Domingos Martins',8),
(24,'Dores do Rio Preto',8),
(25,'Ecoporanga',8),
(26,'Fundao',8),
(27,'Guacui',8),
(28,'Guarapari',8),
(29,'Ibatiba',8),
(30,'Ibiracu',8),
(31,'Ibitirama',8),
(32,'Iconha',8),
(33,'Irupi',8),
(34,'Itaguacu',8),
(35,'Itapemirim',8),
(36,'Itarana',8),
(37,'Iuna',8),
(38,'Jaguare',8),
(39,'Jeronimo Monteiro',8),
(40,'Joao Neiva',8),
(41,'Laranja da Terra',8),
(42,'Linhares',8),
(43,'Mantenopolis',8),
(44,'Marataizes',8),
(45,'Marechal Floriano',8),
(46,'Marilandia',8),
(47,'Mimoso do Sul',8),
(48,'Montanha',8),
(49,'Mucurici',8),
(50,'Muniz Freire',8),
(51,'Muqui',8),
(52,'Nova Venecia',8),
(53,'Pancas',8),
(54,'Pedro Canario',8),
(55,'Pinheiros',8),
(56,'Piuma',8),
(57,'Ponto Belo',8),
(58,'Presidente Kennedy',8),
(59,'Rio Bananal',8),
(60,'Rio Novo do Sul',8),
(61,'Santa Leopoldina',8),
(62,'Santa Maria de Jetiba',8),
(63,'Santa Teresa',8),
(64,'Sao Domingos do Norte',8),
(65,'Sao Gabriel da Palha',8),
(66,'Sao Jose do Calcado',8),
(67,'Sao Mateus',8),
(68,'Sao Roque do Canaa',8),
(69,'Serra',8),
(70,'Sooretama',8),
(71,'Vargem Alta',8),
(72,'Venda Nova do Imigrante',8),
(73,'Viana',8),
(74,'Vila Pavao',8),
(75,'Vila Valerio',8),
(76,'Vila Velha',8),
(77,'Vitoria',8)


insert into bairro(id,nome,fk_cidade_id) values 
(1,'Centro',77),
(2,'Do Moscoso',77),
(3,'Fonte Grande',77),
(4,'Ilha do Príncipe',77),
(5,'Parque Moscoso',77),
(6,'Piedade',77),
(7,'Santa Clara',77),
(8,'Vila Rubim',77),
(9,'Ariovaldo Favalessa',77),
(10,'Bela Vista',77),
(11,'Caratoíra',77),
(12,'Do Cabral',77),
(13,'Do Quadro',77),
(14,'Estrelinha',77),
(15,'Grande Vitória',77),
(16,'Inhanguetá',77),
(17,'Mário Cypreste',77),
(18,'Santo Antônio',77),
(19,'Santa Tereza',77),
(20,'Universitário',77),
(21,'Bento Ferreira',77),
(22,'Consolação',77),
(23,'Cruzamento',77),
(24,'De Lourdes',77),
(25,'Forte São João',77),
(26,'Fradinhos',77),
(27,'Gurigica',77),
(28,'Horto',77),
(29,'Ilha de Santa Maria',77),
(30,'Jesus de Nazareth',77),
(31,'Jucutuquara',77),
(32,'Monte Belo',77),
(33,'Nazareth',77),
(34,'Romão',77),
(35,'Andorinhas',77),
(36,'Bonfim',77),
(37,'Da Penha',77),
(38,'Itararé',77),
(39,'Joana dArc',77),
(40,'Maruípe',77),
(41,'Santa Cecília',77),
(42,'Santa Martha',77),
(43,'Santos Dumont',77),
(44,'São Benedito',77),
(45,'São Cristóvão',77),
(46,'Tabuazeiro',77),
(47,'Barro Vermelho',77),
(48,'Enseada do Suá',77),
(49,'Ilha do Boi',77),
(50,'Ilha do Frade',77),
(51,'Praia do Canto',77),
(52,'Praia do Suá',77),
(53,'Santa Helena',77),
(54,'Santa Lúcia',77),
(55,'Santa Luíza',77),
(56,'Aeroporto',77),
(57,'Antônio Honório',77),
(58,'Goiabeiras',77),
(59,'Jabour',77),
(60,'Maria Ortiz',77),
(61,'Segurança do Lar',77),
(62,'Solon Borges',77),
(63,'Jardim Camburi',77),
(64,'Parque Industrial',77),
(65,'Boa Vista',77),
(66,'Jardim da Penha',77),
(67,'Mata da Praia',77),
(68,'Morada de Camburi',77),
(69,'Pontal de Camburi',77),
(70,'República',77),
(71,'Costa Bela',69)

insert into empresa(login,email,senha,tipo,id,nome,cnpj,dt_cadastro,sobre,logradouro,cep,fk_bairro_id) values 
('jkl','jkl@gmail.com.br',123,2,2,'JKL empresa',6512374,'2017-09-08 00:00:00','empresa de camas','av y, 150',4554632,3),
('kwl','kwl@gmail.com.br',123,2,3,'KWL empresa',3571748,'2017-08-16 00:00:00','empresa de granizo','rua b, 72',234982,4),
('xyz','xyz@gmail.com.br',123,2,4,'XYZ museu',1438757,'2017-09-12 00:00:00','museu de granizos','rua p, 234',2345342,3),
('brt','brt@gmail.com.br',123,2,5,'BRT empresa',3510066,'2017-08-25 00:00:00','empresa de carros ','av f, 345',523864,2),
('yyi','yyi@gmail.com.br',123,2,6,'YYI empresa',2000647,'2017-09-10 00:00:00','empresa de metal','rua t, 12',1223123,1),
('zxc','zxc@gmail.com.br',123,2,7,'ZXC museu',2542476,'2017-09-01 00:00:00','museu de algodao','rua x, 98',3345345,4),
('cvb','cvb@gmail.com.br',123,2,8,'CVB museu',9870564,'2017-08-13 00:00:00','museu de doces','av b, 92',1231353,3),
('mnx','mnx@gmail.com.br',123,2,9,'MNX empresa',6171468,'2017-08-27 00:00:00','empresa de petroleo','av k, 108',7563354,2),
('lkj','lkj@gmail.com.br',123,2,10,'LKJ museu',6211844,'2017-09-02 00:00:00','museu de animais extintos','rua w, 37',352048,1),
('artees','artees@gmail.com.br',123,2,11,'Museu de Arte do Espírito Santo',000123456789,'2017-09-17 21:43:11.790115',' Museu de Arte do Espírito Santo Dionísio Del Santo é um museu localizado em Vitória, Espírito Santo, inaugurado no dia 18 de dezembro de 1998','Av. Jerônimo Monteiro, 631',29010001,1),
('abc','abc@gmail.com.br',123,2,1,'ABC museu',3143254,'2017-09-17 20:23:51.284986','museu do alfabeto','rua x, 80',3905834,5)

insert into cliente_empresa(fk_cliente_id,fk_empresa_id) values 
(1,2),
(4,5),
(2,3),
(3,4),
(5,6),
(7,8),
(7,9),
(8,9),
(9,10),
(10,1),
(10,2)

insert into comentario(id,descricao,data_cadastro,nota,tipo,fk_cliente_id) values 
(1,'Essa peça esta do balacobaco','2017-09-17 17:39:23',5,1,8),
(2,'Essa exposição ta uma porcaria!','2017-09-10 13:54:37',1,2,5),
(3,'Essa peça me faz refletir sobre a vida','2017-09-18 18:09:23',2,1,9),
(4,'Essa exposição ta excelente!','2017-09-10 13:54:37',5,2,1),
(5,'Essa exposição ta mais ou menos!','2017-09-10 13:54:37',3,2,2),
(6,'Essa exposição ta mais ou menos mais pra menos','2017-09-10 13:54:37',2,2,5),
(7,'Belas cores foram usadas','2017-09-18 18:09:23',5,1,3),
(8,'Me da um dejavu por algum motivo','2017-09-18 18:09:23',3,1,7),
(9,'Olha que beleza','2017-09-18 18:09:23',4,1,10),
(10,'Esse unicornio me damedo','2017-09-18 18:09:23',2,1,6)

insert into resposta(fk_comentario_id_origem,fk_comentario_id_destino,curtida,descricao) values 
(1,4,'t','concordo plenamente'),
(2,6,'f','calaboca'),
(3,2,'t','realmente muito linda'),
(4,1,'t','verdade!'),
(5,4,'t','isso ai'),
(6,7,'t','pode crer'),
(7,9,'f','nunkkkk'),
(8,1,'f','Voce nao sabe do que ta falando'),
(9,4,'f','Não fala do que não sabe..'),
(10,7,'t','disse tudo')

insert into notificacao(data,descricao,id,tipo,id_origem,tipo_origem) values 
('2017-09-28 10:00:00','Exposição muito irada',2,1,1,1),
('2017-10-02 09:30:00','Promoção imperível',3,2,7,2),
('2017-10-08 11:00:00','Exposição de granizo',4,1,3,1),
('2017-10-23 10:00:00','Exposição de quadros',5,1,3,1),
('2017-10-09 14:00:00','Promoção maluca',6,2,4,2),
('2017-10-01 15:00:00','Promoção doida',7,2,2,2),
('2017-11-18 13:00:00','Exposição de manuscritos',8,1,4,1),
('2017-10-12 13:30:00','Exposição de lupas',9,1,5,1),
('2017-10-19 08:30:00','Exposição de cadeiras',10,1,6,1),
('2017-12-22 10:30:00','Exposição de maçanetas',11,1,7,1)

insert into cliente_notificacao(fk_cliente_id,fk_notificacao_id) values 
(1,9),
(2,8),
(3,7),
(4,6),
(5,5),
(6,4),
(7,3),
(8,2),
(9,11),
(10,2),
(1,3),
(2,4),
(3,5),
(4,6),
(5,7),
(6,8)

insert into peca(autor,nome,id,dt_criacao,sobre,fk_exposicao_id) values 
('C.M. Coolidge','Dogs Playing Poker',23,'1903-01-01','Pintura de cachorros jogando poker',21),
('Pierre-Auguste Renoir','Bal du moulin de la Galette',24,'1876-01-01','Pintura de uma festa',21),
('Jackson Pollock','No. 5, 1948',25,'2006-01-01','pintura foi feita em um painel de fibra, pintada com resina sintetica',21),
('Rene Magritte','The Son of Man',26,'1964-01-01','pintura de um homem com uma maca verde na frente do rosto',21),
('Vincent van Gogh','Cafe Terrace at Night',27,'1888-01-01','pintada a oleo',21),
('Edvard Munch','The Scream',28,'1893-01-01','pintura de um homem gritando',21),
('Leonardo da Vinci','The Mona Lisa',29,'1517-01-01','pintura de uma mulher',21),
('Salvador Dali','La persistencia de la memoria',30,'1930-01-01','pintura surrealista',21),
('Pablo Picasso','Three Musicians',31,'1929-01-01','pintura cubista',21),
('Georges-Pierre Seurat','A Sunday Afternoon on the Island of La Grande Jatte',32,'1886-01-01','pintura a oleo em pontilhismo',21),
('Grant Wood','American Gothic',33,'1930-01-01','pintura a oleo de um homem e uma mulher',21)

insert into exposicao(id,descricao,dt_inicio,hr_inicio,hr_final,exposicao_tipo,fk_empresa_id,logradouro,fk_bairro_id) values 
(1,'Exposicao cama de casal','2017-01-01','08:00:00','18:00:00',1,2,'Avenida teste',15),
(5,'Exposicao Carros Novos','2012-04-01','08:00:00','18:00:00',1,5,'Avenida teste',15),
(7,'Exposicao do Algodao','2014-06-01','08:00:00','18:00:00',1,7,'Avenida teste',15),
(10,'Exposicao Animais Exoticos','2012-02-01','08:00:00','18:00:00',1,10,'Avenida teste',15),
(2,'Exposicao cama de casal','2017-01-01','08:00:00','18:00:00',1,2,'Avenida teste',1),
(3,'Exposicao Materias','2015-01-01','08:00:00','18:00:00',1,3,'Avenida teste',1),
(4,'Exposicao Granizos','2011-01-01','08:00:00','18:00:00',1,4,'Avenida teste',1),
(9,'Exposicao Fotografias do petroleo','2013-04-01','08:00:00','18:00:00',1,9,'Avenida teste',1),
(6,'Exposicao Ferramentas','2013-05-01','08:00:00','18:00:00',1,6,'Avenida teste',7),
(8,'Exposicao Chocolates','2015-07-01','08:00:00','18:00:00',1,8,'Avenida teste',7),
(21,'Exposicao de Obras do Museu de Arte do Espirito Santo','2017-09-17','10:00:00','20:00:00',1,11,'Avenida teste',7)

insert into exposicao_temporaria(id,descricao,dt_inicio,hr_inicio,hr_final,exposicao_tipo,fk_empresa_id,dt_fim,logradouro,fk_bairro_id) values 
(13,'Exposicao Materias especiais','2015-01-01','08:00:00','18:00:00',2,3,'2018-01-01','Avenida teste',15),
(15,'Exposicao Carros Antigos','2012-04-01','08:00:00','18:00:00',2,5,'2013-01-01','Avenida teste',15),
(20,'Exposicao Animais Selvagens','2017-01-01','08:00:00','18:00:00',2,10,'2017-02-01','Avenida teste',15),
(11,'Exposicao anos 90','2017-01-01','08:00:00','18:00:00',2,1,'2017-01-30','Avenida teste',1),
(16,'Exposicao Ferramentas','2013-05-01','08:00:00','18:00:00',2,6,'2014-01-01','Avenida teste',8),
(18,'Exposicao Chocolates Garoto','2015-07-01','08:00:00','18:00:00',2,8,'2016-01-01','Avenida teste',8),
(12,'Exposicao cama para tratamento de coluna','2017-01-01','08:00:00','18:00:00',2,2,'2018-01-01','Avenida teste',10),
(19,'Exposicao Fotografias do Derivados do Petroleo','2017-01-01','08:00:00','18:00:00',2,9,'2017-06-01','Avenida teste',10),
(17,'Exposicao Materias de Algodao','2014-06-01','08:00:00','18:00:00',2,7,'2015-01-01','Avenida teste',20),
(14,'Exposicao Granizos especiais','2011-01-01','08:00:00','18:00:00',2,4,'2018-01-01','Avenida teste',14)