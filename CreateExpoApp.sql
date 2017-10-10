/* eventosAppLogico: */

CREATE TABLE USUARIO (
    login VARCHAR,
    email VARCHAR,
    senha VARCHAR,
    tipo INTEGER,
    id SERIAL PRIMARY KEY,
    dt_cadastro TIMESTAMP,
    nome VARCHAR,
    logradouro VARCHAR,
    endereco VARCHAR,
    cep VARCHAR
);

CREATE TABLE EMPRESA (
    cnpj VARCHAR,
    sobre VARCHAR,
    FK_BAIRRO_id INTEGER,
    dt_abertura DATE
) inherits (usuario);

CREATE TABLE PECA (
    autor VARCHAR,
    nome VARCHAR,
    id SERIAL PRIMARY KEY,
    sobre VARCHAR,
    dt_criacao DATE,
    FK_EXPOSICAO_id INTEGER
);

CREATE TABLE IMAGEM (
    id SERIAL PRIMARY KEY,
    link_imagem VARCHAR,
    tipo_origem INTEGER,
    id_origem INTEGER
);


CREATE TABLE NOTIFICACAO (
    data TIMESTAMP,
    descricao VARCHAR,
    id SERIAL PRIMARY KEY,
    tipo INTEGER,
    tipo_origem INTEGER,
    id_origem INTEGER
);

CREATE TABLE EXPOSICAO (
    id SERIAL PRIMARY KEY,
    tipo_exposicao INTEGER,
    descricao VARCHAR,
    dt_inicio DATE,
    Hr_inicio TIME,
    Hr_final TIME,
    logradouro VARCHAR,
    endereco VARCHAR,
    FK_EMPRESA_id INTEGER,
	FK_BAIRRO_id INTEGER
);

CREATE TABLE EXPOSICAO_TEMP (
    dt_fim DATE
) inherits (exposicao);

CREATE TABLE CLIENTE (
    data_nascimento DATE,
    sexo CHAR,
    cpf VARCHAR,
    nome VARCHAR,
    FK_BAIRRO_id INTEGER
) inherits (usuario);

CREATE TABLE BAIRRO (
    id SERIAL PRIMARY KEY,
    nome VARCHAR,
    FK_CIDADE_id INTEGER
);

CREATE TABLE CIDADE (
    id SERIAL PRIMARY KEY,
    nome VARCHAR,
    FK_ESTADO_id INTEGER
);

CREATE TABLE ESTADO (
    id SERIAL PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Comentario (
    id SERIAL PRIMARY KEY,
    descricao VARCHAR,
    data_cadastro TIMESTAMP,
    tipo_destino_comentario INTEGER,
    FK_origem_id INTEGER,
    id_destino INTEGER
);

CREATE TABLE Resposta_Comentario (
    FK_Comentario_id_Origem INTEGER,
    FK_Comentario_id_Destino INTEGER
);

CREATE TABLE Cliente_notificacao (
    FK_CLIENTE_id INTEGER,
    FK_NOTIFICACAO_id INTEGER
);

CREATE TABLE Cliente_Empresa (
    FK_CLIENTE_id INTEGER,
    FK_EMPRESA_id INTEGER
);

CREATE TABLE Nota_Exposicao (
    FK_CLIENTE_id INTEGER,
    FK_EXPOSICAO_id INTEGER,
    Nota INTEGER,
    Id serial PRIMARY KEY
);

CREATE TABLE Nota_Peca (
    FK_CLIENTE_id INTEGER,
    FK_PECA_id INTEGER,
    Nota INTEGER,
    Id serial PRIMARY KEY
);

alter table empresa add CONSTRAINT PK_EMPRESA
	PRIMARY KEY (ID);
    
alter table CLIENTE add CONSTRAINT PK_CLIENTE
	PRIMARY KEY (ID);

ALTER TABLE EMPRESA ADD CONSTRAINT FK_EMPRESA_0
    FOREIGN KEY (FK_BAIRRO_id)
    REFERENCES BAIRRO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE PECA ADD CONSTRAINT FK_PECA_1
    FOREIGN KEY (FK_EXPOSICAO_id)
    REFERENCES EXPOSICAO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE EXPOSICAO ADD CONSTRAINT FK_EXPOSICAO_1
    FOREIGN KEY (FK_EMPRESA_id)
    REFERENCES empresa (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE CLIENTE ADD CONSTRAINT FK_CLIENTE_0
    FOREIGN KEY (FK_BAIRRO_id)
    REFERENCES BAIRRO (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE BAIRRO ADD CONSTRAINT FK_BAIRRO_1
    FOREIGN KEY (FK_CIDADE_id)
    REFERENCES CIDADE (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE CIDADE ADD CONSTRAINT FK_CIDADE_1
    FOREIGN KEY (FK_ESTADO_id)
    REFERENCES ESTADO (id)
    ON DELETE RESTRICT ON UPDATE RESTRICT;
 
ALTER TABLE Resposta_Comentario ADD CONSTRAINT FK_Comenta_0
    FOREIGN KEY (FK_Comentario_id_Origem)
    REFERENCES Comentario (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Resposta_Comentario ADD CONSTRAINT FK_Comenta_1
    FOREIGN KEY (FK_Comentario_id_Destino)
    REFERENCES Comentario (id)
    ON DELETE CASCADE ON UPDATE CASCADE;
 
ALTER TABLE Cliente_notificacao ADD CONSTRAINT FK_Cliente_notificacao_0
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES cliente (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Cliente_notificacao ADD CONSTRAINT FK_Cliente_notificacao_1
    FOREIGN KEY (FK_NOTIFICACAO_id)
    REFERENCES NOTIFICACAO (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Cliente_Empresa ADD CONSTRAINT FK_Cliente_Empresa_0
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES cliente (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Cliente_Empresa ADD CONSTRAINT FK_Cliente_Empresa_1
    FOREIGN KEY (FK_EMPRESA_id)
    REFERENCES cliente (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Nota_Exposicao ADD CONSTRAINT FK_Nota_Exposicao_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES cliente (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Nota_Exposicao ADD CONSTRAINT FK_Nota_Exposicao_2
    FOREIGN KEY (FK_EXPOSICAO_id)
    REFERENCES EXPOSICAO (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Nota_Peca ADD CONSTRAINT FK_Nota_Peca_1
    FOREIGN KEY (FK_CLIENTE_id)
    REFERENCES CLIENTE (id)
    ON DELETE SET NULL ON UPDATE CASCADE;
 
ALTER TABLE Nota_Peca ADD CONSTRAINT FK_Nota_Peca_2
    FOREIGN KEY (FK_PECA_id)
    REFERENCES PECA (id)
    ON DELETE SET NULL ON UPDATE CASCADE;