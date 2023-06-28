insert into cozinha (id,nome) values (1,'Tailandesa');
insert into cozinha (id,nome) values (2,'Indiana');

insert into estado(id,nome) values(1,'Ceará');
insert into estado(id,nome) values(2,'Sao paulo');
insert into estado(id,nome) values(3,'Minas gerais');

insert into cidade(nome,estado_id) values('Fortaleza',1);
insert into cidade(nome,estado_id) values('Campinas',2);
insert into cidade(nome,estado_id) values('Belo horizonte',3);

insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp);
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp);
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp);

insert into produto(id,nome,descricao,preco,ativo,restaurante) values(1,'carne moida','pedaco de carne moida',10.00,true,1);

insert into forma_pagamento(id,nome) values(1,'Cartão de credito');
insert into forma_pagamento(id,nome) values(2,'Cartão de debito');
insert into forma_pagamento(id,nome) values(3,'Dinheiro');

insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas');
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas');

insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2);
