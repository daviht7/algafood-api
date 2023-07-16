create table forma_pagamento
(
    id bigint not null auto_increment,
    nome varchar(60) not null,
    primary key (id)
) engine=InnoDB

create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table item_pedido (id bigint not null auto_increment, observacao varchar(255), preco_total decimal(19,2) not null, preco_unitario decimal(19,2) not null, quantidade integer not null, pedido_id bigint not null, produto_id integer not null, primary key (id)) engine=InnoDB
create table pedido (id bigint not null auto_increment, data_cancelamento datetime(6), data_confirmacao datetime(6), data_criacao datetime(6) not null, data_entrega datetime(6), endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), status integer, sub_total decimal(19,2) not null, taxa_frete decimal(19,2) not null, valor_total decimal(19,2) not null, usuario_cliente_id integer not null, endereco_cidade_id bigint, forma_pagamento_id bigint not null, restaurante_id bigint not null, primary key (id)) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table item_pedido add constraint FK60ym08cfoysa17wrn1swyiuda foreign key (pedido_id) references pedido (id)
alter table item_pedido add constraint FKtk55mn6d6bvl5h0no5uagi3sf foreign key (produto_id) references produto (id)
alter table pedido add constraint FKcccmjvm9ytuxbe00h3wmtm77y foreign key (usuario_cliente_id) references usuario (id)
alter table pedido add constraint FKk987vfg9cpgx7qxj3166fdqig foreign key (endereco_cidade_id) references cidade (id)
alter table pedido add constraint FKqaa411xsl0xu4tkvt1wpccd3b foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table pedido add constraint FK3eud5cqmgsnltyk704hu3qj71 foreign key (restaurante_id) references restaurante (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
create table cidade (id bigint not null auto_increment, nome varchar(255), estado_id bigint, primary key (id)) engine=InnoDB
create table cozinha (id bigint not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table estado (id bigint not null auto_increment, nome varchar(255), primary key (id)) engine=InnoDB
create table forma_pagamento (id bigint not null auto_increment, descricao varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo (id integer not null auto_increment, nome varchar(255) not null, primary key (id)) engine=InnoDB
create table grupo_permissao (grupo_id integer not null, permissao_id bigint not null) engine=InnoDB
create table item_pedido (id bigint not null auto_increment, observacao varchar(255), preco_total decimal(19,2) not null, preco_unitario decimal(19,2) not null, quantidade integer not null, pedido_id bigint not null, produto_id integer not null, primary key (id)) engine=InnoDB
create table pedido (id bigint not null auto_increment, data_cancelamento datetime(6), data_confirmacao datetime(6), data_criacao datetime(6) not null, data_entrega datetime(6), endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), status integer, sub_total decimal(19,2) not null, taxa_frete decimal(19,2) not null, valor_total decimal(19,2) not null, usuario_cliente_id integer not null, endereco_cidade_id bigint, forma_pagamento_id bigint not null, restaurante_id bigint not null, primary key (id)) engine=InnoDB
create table permissao (id bigint not null auto_increment, descricao varchar(255), nome varchar(255), primary key (id)) engine=InnoDB
create table produto (id integer not null auto_increment, ativo bit not null, descricao varchar(255) not null, nome varchar(255) not null, preco decimal(19,2) not null, restaurante bigint not null, primary key (id)) engine=InnoDB
create table restaurante (id bigint not null auto_increment, data_atualizacao datetime not null, data_cadastro datetime not null, endereco_bairro varchar(255), endereco_cep varchar(255), endereco_complemento varchar(255), endereco_logradouro varchar(255), endereco_numero varchar(255), nome varchar(255), taxa_frete decimal(19,2) not null, cozinha_id bigint not null, endereco_cidade_id bigint, primary key (id)) engine=InnoDB
create table restaurante_forma_pagamento (restaurante_id bigint not null, forma_pagamento_id bigint not null) engine=InnoDB
create table usuario (id integer not null auto_increment, data_cadastro datetime not null, email varchar(255) not null, nome varchar(255) not null, senha varchar(255) not null, primary key (id)) engine=InnoDB
create table usuario_grupo (usuario_id integer not null, grupo_id integer not null) engine=InnoDB
alter table cidade add constraint FKkworrwk40xj58kevvh3evi500 foreign key (estado_id) references estado (id)
alter table grupo_permissao add constraint FKh21kiw0y0hxg6birmdf2ef6vy foreign key (permissao_id) references permissao (id)
alter table grupo_permissao add constraint FKta4si8vh3f4jo3bsslvkscc2m foreign key (grupo_id) references grupo (id)
alter table item_pedido add constraint FK60ym08cfoysa17wrn1swyiuda foreign key (pedido_id) references pedido (id)
alter table item_pedido add constraint FKtk55mn6d6bvl5h0no5uagi3sf foreign key (produto_id) references produto (id)
alter table pedido add constraint FKcccmjvm9ytuxbe00h3wmtm77y foreign key (usuario_cliente_id) references usuario (id)
alter table pedido add constraint FKk987vfg9cpgx7qxj3166fdqig foreign key (endereco_cidade_id) references cidade (id)
alter table pedido add constraint FKqaa411xsl0xu4tkvt1wpccd3b foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table pedido add constraint FK3eud5cqmgsnltyk704hu3qj71 foreign key (restaurante_id) references restaurante (id)
alter table produto add constraint FK205tirhb052la7eb5a26s2l3m foreign key (restaurante) references restaurante (id)
alter table restaurante add constraint FK76grk4roudh659skcgbnanthi foreign key (cozinha_id) references cozinha (id)
alter table restaurante add constraint FKbc0tm7hnvc96d8e7e2ulb05yw foreign key (endereco_cidade_id) references cidade (id)
alter table restaurante_forma_pagamento add constraint FK7aln770m80358y4olr03hyhh2 foreign key (forma_pagamento_id) references forma_pagamento (id)
alter table restaurante_forma_pagamento add constraint FKa30vowfejemkw7whjvr8pryvj foreign key (restaurante_id) references restaurante (id)
alter table usuario_grupo add constraint FKk30suuy31cq5u36m9am4om9ju foreign key (grupo_id) references grupo (id)
alter table usuario_grupo add constraint FKdofo9es0esuiahyw2q467crxw foreign key (usuario_id) references usuario (id)
insert into cozinha (id,nome) values (1,'Tailandesa')
insert into cozinha (id,nome) values (2,'Indiana')
insert into estado(id,nome) values(1,'Ceará')
insert into estado(id,nome) values(2,'Sao paulo')
insert into estado(id,nome) values(3,'Minas gerais')
insert into cidade(nome,estado_id) values('Fortaleza',1)
insert into cidade(nome,estado_id) values('Campinas',2)
insert into cidade(nome,estado_id) values('Belo horizonte',3)
insert into restaurante (id,nome,taxa_frete,cozinha_id,endereco_cidade_id,endereco_cep,endereco_logradouro,endereco_complemento,endereco_numero,endereco_bairro,data_cadastro,data_atualizacao) values (1,'Tio armênio',10.0,1,1,'60741510','rua santiago','B','279','serrinha',utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (2,'Bar chá da égua', 5.55,2,utc_timestamp,utc_timestamp)
insert into restaurante (id,nome,taxa_frete,cozinha_id,data_cadastro,data_atualizacao) values (3,'Cozinha mineira', 0,2,utc_timestamp,utc_timestamp)
insert into produto(id,nome,descricao,preco,ativo,restaurante) values (1,'carne moida','pedaco de carne moida',10.00,true,1)
insert into forma_pagamento(id,nome) values(1,'Cartão de credito')
insert into forma_pagamento(id,nome) values(2,'Cartão de debito')
insert into forma_pagamento(id,nome) values(3,'Dinheiro')
insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas')
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas')
insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2)
