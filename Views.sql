CREATE VIEW empresa_qtd_seguidores AS
SELECT empresa.nome, COUNT(*) quantidade_seguidores
FROM empresa
INNER JOIN cliente
on (empresa.id = cliente.fk_empresa_id)
GROUP BY empresa.id
ORDER BY quantidade_seguidores DESC



CREATE VIEW cidade_qtd_empresas AS 
SELECT estado.nome, COUNT(*) quantidade_empresas
from cidade
INNER JOIN 
on (cidade.id = cidade.fk_cidade_id)
INNER JOIN empresa
on (bairro.id = empresa.fk_bairro_id)
GROUP BY cidade.id
ORDER BY quantidade_empresas   
  
  
  
CREATE VIEW historico_notificao_empresa AS
SELECT empresa.nome, notificacao_id id_notificacao, notificacao.tipo, notificacao.tipo_origem, notificacao.descricao, notificacao.data
FROM empresa
INNER JOIN
on (empresa.id = notificacao.id_origem) and notificacao.id_origem = 1
ORDER BY empresa.nome

