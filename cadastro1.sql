create database cadastro1
default character set utf8
default collate utf8_general_ci;

create table pessoas1(
id int NOT NULL AUTO_INCREMENT,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
) default charset = utf8 ;

/*para inserir dados/valores nas tabelas:*/
insert into pessoas1
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Goldofredo','1984-01-02','M','78.5','1.83','Brasil');

insert into pessoas1
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Maria','1999-12-30','F','55.20','1.65','Portugal');

insert into pessoas1
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
values
(default,'Creuza','1920-12-30','F','55.20','1.65','Portugal');

/*se a ordem de definição dos campos for a mesma que a do banco você pode escrever diretamente*/
insert into pessoas1 values
(default,'Adalgiza','1930-11-2','F','63.2','1.75','Irlanda');

/*para criar com mais de uma pessoa for vez usar , no lugar de ;*/
insert into pessoas1 values
(default,'Claudia','1975-4-22','M','99.0','2.15','Brasil'),
(default,'Pedro','1999-12-3','M','87','2',default),
(default,'Janaina','1987-11-12','F','75.4','1.66','EUA');

select * from pessoas1; /*para mostrar a tabela*/

describe pessoas1; /*mostra as infos dos dados*/

alter table pessoas1
add column profissao varchar(10);  

alter table pessoas1
drop column profissao;

alter table pessoas1
add column profissao varchar(10) after nome; /*after para aparecer depois do nome*/

alter table pessoas1
add column codigo int first; /*first para aparecer antes de tudo*/
 
alter table pessoas1
modify column profissao varchar(20); 

alter table pessoas1 
change column profissao prof varchar(20); /*para alterar nome da coluna*/


/*/RENOMEAR   TABELA*/
alter table pessoas1
rename to gafanhotos;



/* ///////////NOVA TABELA - AULA8/////////////*/

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2016'
) default charset=utf8;

alter table cursos 
add column idcursos int first;

alter table cursos
add primary key (idcursos); /*tornar PK*/

describe cursos;

create table if not exists testes(
id int ,
nome varchar(10),
idade int);

insert into testes value
('1','Pedro','22'),
('2','Maria','12'),
('3','Maricota','77');

drop table if exists testes;

/*aula 7*/

use cadastro1;

select * from gafanhotos; 

insert into cursos values
 ('1','HTML4','Curso de HTML5','40','37','2014'),
 ('2','Algoritimos','Logica de Programação','20','8','2014'),
 ('3','Photoshop','Aulas de Photoshop CC','9','20','2014'),
 ('4','PGP','PHP para Iniciantes','33','40','2010'),
 ('5','Jarva','Intro ao Java','22','10','2000'),
 ('6','MySQL','Curso MySQL','21','15','2016'),
 ('7','World','Word Completo','40','30','2016'),
 ('8','Sapateado','Dança Rítimica','14','30','2018'),
 ('9','Cozinha Árabe','Aprenda a fazer Kibe','40','30','2018'),
 ('10','YouTuber','Gerar Polêmicas e Ganhar Inscritos','5','2','2018');
 
 select * from cursos;
 
 /* modificar tuplas/linhas */
 
 update cursos 
 set nome = 'HTML5'
 where idcursos = '1';
 
 update cursos 
 set nome = 'PHP' , ano = '2015'
 where idcursos = '4';
 
update cursos 
set nome = 'Java', carga = '40', ano = '2015', totalaulas = '29'
where idcursos = '5'
limit 1; /* para garantir que não afete outras linhas*/ 

/*apagar linha*/
delete from cursos
where idcursos='8';

delete from cursos
where ano = '2018'
limit 2;

/*apagar todas as linhas*/ 
truncate table cursos;

/*aula 8*/

insert into cursos values
 ('1','HTML5','Curso de HTML5','40','37','2014'),
 ('2','Algoritimos','Logica de Programação','20','15','2014'),
 ('3','Photoshop','Aulas de Photoshop CC','10','8','2014'),
 ('4','PHP','PHP para Iniciantes','40','20','2015'),
 ('5','Java','Intro ao Java','40','29','2015'),
 ('6','MySQL','Curso MySQL','30','15','2016'),
 ('7','World','Word Completo','40','30','2016');

select * from cursos;
select * from gafanhotos;
describe gafanhotos;
describe cursos;

use cadastro1;
