-- comentarios 
-- a linha baixo cria um banco de dados
create database dbinfox;
-- a linha abaixo escolhe o banco de dados
use dbinfox;
-- o bloco  de instrucoes abaixo cria uma tabela
create table tbusuario(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar(15) not null unique,
senha varchar(15)not null,
perfil varchar(50)
);

-- apagar tabela
-- DROP TABLE tbusuario;
-- o comando abaixo descreve a tabela
describe tbusuario;
-- a linha abaixo insere dados da tabela (CRUD)
-- create -> insert 
insert into tbusuario(iduser, usuario, fone, login, senha)
 values(1, 'Jose de Assis', '9999-9999', 'JoseAssis', '1234');
-- a linha abaixo exibe os dados da tabela(CRUD)
-- read -> select
select * from tbusuario;

insert into tbusuario(iduser, usuario, fone, login, senha)
 values(2, 'Administrador', '9999-9999', 'admin', 'admin');

insert into tbusuario(iduser, usuario, fone, login, senha)
 values(3, 'Bill Gates', '9999-8888', 'bill', '1234');

 -- a linha abaixo modifica dados na tabela (CRUD)
 -- update -> update
  update tbusuario set fone = '9999-9999' where iduser = 2; 
  
  -- a linha abaixo apaga um registro da tabela(CRUD)
  -- delete -> delete
  -- delete from tbusuario where iduser = 3;
  
select * from tbusuario;

create table tbclientes(
idcli int primary key auto_increment,
nomecli varchar(50) not null,
endcli varchar(100),
fonecli varchar(50) not null,
emailcli varchar(50)
);

 describe tbclientes;

insert into tbclientes(nomecli, endcli, fonecli, emailcli)
values('Linus Torvalds', 'Rua Tux,2015', '9999-9999', 'linus@linux.com');

select * from tbclientes;

use dbinfox;

create table tbos(
os int primary key auto_increment,
data_os timestamp default current_timestamp,
equipamento varchar (150) not null,
defeito varchar (150) not null,
servico varchar(150),
tecnico varchar(30),
valor decimal(10,2),
idcli int not null,
foreign key(idcli) references tbclientes(idcli)
);

describe tbos;  

insert into tbos (equipamento, defeito, servico, tecnico, valor, idcli)
values ('Notebook', 'Nao liga', 'Troca de fonte', 'Ze', 87.50, 1);

select * from tbos;

-- o codigo abaixo traz informacoes de duas tabelas
select
O.os,equipamento,defeito,servico,valor,
C.nomecli,fonecli
from tbos as O
inner join tbclientes as Ctbclientestbos
on (O.idcli =  C.idcli);

select * from tbusuario;
select * from tbusuario where login='admin' and senha= 'admin';
 
select * from tbusuario;
insert into tbusuario(iduser, usuario, fone, login, senha)
value(4, 'Leandro Ramos', '9999-9999', 'leandro', 1234);

update tbusuario set iduser = 3 where iduser = 4;