create table estado
(
    id bigint not null auto_increment,
    nome varchar(60) not null,
    primary key (id)
) engine=InnoDB;

alter table cidade add column estado_id bigint not null;

alter table cidade add constraint fk_cidade_estado foreign key(estado_id) references estado(id);

alter table cidade drop column nome_estado;

alter table cidade change nome_cidade nome varchar(80) not null;