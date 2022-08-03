/*aula 15 - video 17
criação de PK e FK + manipulação de dados*/

/*criação das chaves, FK em gafanhotos*/
desc gafanhotos;
alter table gafanhotos add column cursopreferido int;

alter table gafanhotos
add foreign key(cursopreferido)
references cursos(idcurso);


/*adicionando e apagando cursos dos alunos*/
select * from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';
delete from cursos where idcurso = '28';





