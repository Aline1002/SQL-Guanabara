/*aula de select - video 14 part2*/ 

select * from cursos
where nome like 'P%';  /*pareça com P*/

select * from cursos
where nome like '%A';  /*termine com A*/

select * from cursos
where nome like '%A%';  /*tenha A em qqr lugar*/

select * from cursos
where nome not like '%A%';  /* não tenha a letra A*/

select count(*) from cursos; /*mostrar quantos cursos no total*/ 

select max(carga) from cursos; /*para mostrar o curso com > carga*/

select max(totaulas) from cursos where ano = '2016'; /*maior qnt de aulas em 2016*/

select sum(totaulas) from cursos where ano = '2016'; /*somatorio de aulas em 2016*/ 

select avg(totaulas) from cursos where ano = '2016'; /*media de aulas em 2016*/


/*exercicios*/
select * from gafanhotos where sexo = 'F';
select * from gafanhotos where nascimento > '2000/01/01' < '2015/12/31';
select * from gafanhotos where profissao = 'programador' and sexo = 'M';
select * from gafanhotos where sexo = 'F' and nome like 'J%' and nacionalidade = 'Brasil';
select nome, nacionalidade from gafanhotos where sexo = 'M' and nacionalidade != 'Brasil' and peso < 100; 
select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';
select avg(peso) from gafanhotos;
select min(peso) from gafanhotos where nacionalidade != 'Brasil' and nascimento >'1990/01/01' <'2002/12/31';
select count(altura) from gafanhotos where altura > 1.90 and sexo = 'F';
