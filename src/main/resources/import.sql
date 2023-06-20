insert into cozinha (id,nome) values (1,'Tailandesa');
insert into cozinha (id,nome) values (2,'Indiana');

insert into estado(id,nome) values(1,'Ceará');
insert into estado(id,nome) values(2,'Sao paulo');
insert into estado(id,nome) values(3,'Minas gerais');

insert into cidade(nome,estado_id) values('Fortaleza',1);
insert into cidade(nome,estado_id) values('Campinas',2);
insert into cidade(nome,estado_id) values('Belo horizonte',3);

insert into restaurante (nome,taxa_frete,cozinha_id) values ('Tio armênio',10.0,1);
insert into restaurante (nome,taxa_frete,cozinha_id) values ('Bar chá da égua', 5.55,2);
insert into restaurante (nome,taxa_frete,cozinha_id) values ('Cozinha mineira', 0,2);

insert into forma_pagamento(id,nome) values(1,'Cartão de credito');
insert into forma_pagamento(id,nome) values(2,'Cartão de debito');
insert into forma_pagamento(id,nome) values(3,'Dinheiro');

insert into permissao(id,nome,descricao) values(1,'CONSULTAR_COZINHAS','Permite consultar cozinhas');
insert into permissao(id,nome,descricao) values(2,'EDITAR_COZINHAS','Permite editar cozinhas');

insert into restaurante_forma_pagamento(restaurante_id,forma_pagamento_id) values(1,1),(1,2);
