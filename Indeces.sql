
create index cliente_cpf on cliente using hash (cpf);

create index empresa_documento on empresa using hash (cnpj);

create index notificacao_data on notificacao using btree (data_cadastro);
