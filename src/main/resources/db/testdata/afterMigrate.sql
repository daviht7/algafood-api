set foreign_key_checks = 0;

delete from cidade;
delete from cozinha;
delete from estado;
delete from forma_pagamento;
delete from grupo;
delete from grupo_permissao;
delete from permissao;
delete from produto;
delete from restaurante;
delete from restaurante_forma_pagamento;
delete from usuario;
delete from usuario_grupo;

set foreign_key_checks = 1;

alter table cidade auto_increment = 1;
alter table cozinha auto_increment = 1;
alter table estado auto_increment = 1;
alter table forma_pagamento auto_increment = 1;
alter table grupo auto_increment = 1;
alter table grupo_permissao auto_increment = 1;
alter table permissao auto_increment = 1;
alter table produto auto_increment = 1;
alter table restaurante auto_increment = 1;
alter table restaurante_forma_pagamento auto_increment = 1;
alter table usuario auto_increment = 1;
alter table usuario_grupo auto_increment = 1;


insert ignore into cozinha (id,nome) values (1,'Tailandesa');
insert ignore into cozinha (id,nome) values (2,'Indiana');

insert ignore into estado(id,nome) values(1,'Ceará');
insert ignore into estado(id,nome) values(2,'Sao paulo');
insert ignore into estado(id,nome) values(3,'Minas gerais');

insert ignore into cidade(nome,estado_id) values('Fortaleza',1);
insert ignore into cidade(nome,estado_id) values('Campinas',2);
insert ignore into cidade(nome,estado_id) values('Belo horizonte',3);

insert ignore into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp);
insert ignore into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp);
insert ignore into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp);

insert ignore into produto(id,nome,descricao,preco,ativo,restaurante_id) values (1,'carne moida','pedaco de carne moida',10.00,true,1);

insert ignore into forma_pagamento(id,nome) values(1,'Cartão de credito');
insert ignore into forma_pagamento(id,nome) values(2,'Cartão de debito');
insert ignore into forma_pagamento(id,nome) values(3,'Dinheiro');

insert ignore into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas');
insert ignore into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas');

insert ignore into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2);
