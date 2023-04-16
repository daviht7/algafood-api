insert into cozinha (id,nome) values (1,'Tailandesa');
insert into cozinha (id,nome) values (2,'Indiana');

insert into restaurante (nome,taxa_frete,cozinha_id) values ('Tio armênio',10.0,1);
insert into restaurante (nome,taxa_frete,cozinha_id) values ('Bar chá da égua', 5.55,2);

insert into forma_pagamento(nome) values('CARTÃO');

insert into permissao(descricao,nome) values('LEITURA','LER');

insert into estado(id,nome) values(1,'Ceará');

insert into cidade(nome,estado_id) values('Fortaleza',1);