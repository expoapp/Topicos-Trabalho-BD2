
CREATE VIEW empresa_qtd_seguidores AS (
SELECT empresa.nome, COUNT(*) quantidade_seguidores
FROM empresa
INNER JOIN cliente_empresa
on empresa.id = cliente_empresa.fk_empresa_id
GROUP BY empresa.id
ORDER BY quantidade_seguidores DESC
  );



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
  
  
create view historico_notificao_empresa as (
SELECT empresa.nome, notificacao.id, notificacao.tipo, notificacao.tipo_origem, notificacao.descricao, notificacao.data_cadastro
FROM empresa
INNER JOIN notificacao
on empresa.id = notificacao.id_origem and notificacao.tipo_origem = 1
ORDER BY empresa.nome
);

create view notificacao_exposicao_cliente as (
select a.cpf,a.nome,d.descricao Exposicao ,c.descricao Notificacao ,c.data_cadastro from cliente a
join cliente_notificacao b on a.id = b.fk_cliente_id
join notificacao c on b.fk_notificacao_id = c.id
join exposicao d on c.id_origem = d.id and c.tipo_origem = 2
order by a.cpf, c.data_cadastro
)
