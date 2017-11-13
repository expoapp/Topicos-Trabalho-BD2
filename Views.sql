
  CREATE VIEW historico_notificao_empresa AS
  SELECT empresa.nome, notificacao_id id_notificacao, notificacao.tipo, notificacao.tipo_origem, notificacao_descricao, notificacao.data
  FROM empresa
  INNER JOIN
  on (empresa.id = notificacao.id_origem) and notificacao.id_origem = 1
  ORDER BY empresa.nome
