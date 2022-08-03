select nome, cursopreferido from gafanhotos;

select nome, ano from cursos; 



/*nome + cursopreferido somente onde ele for FK
sempre que usar join usar tbm on
as -> torna apelido/abreviação
inner join relaciona as tabelas*/
select g.nome, c.nome, c.ano
from gafanhotos as g /*(inner)*/ join cursos as c
on c.idcurso = g.cursopreferido /*onde*/ 
order by g.nome; 

/*assim ele considera até quem não tem relacionamento*/
select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c /*considerando a esquerda/left ou direita/right*/
on c.idcurso = g.cursopreferido /*onde*/ 
order by g.nome;
