/*select aula 3 - agrupar e distinguir */

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;


select carga, count(nome) from cursos where totaulas = 30
group by carga;

select ano, count(*) from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

/*mostrar carga e quantidade de cursos a partir de 2015 com carga acima da media*/
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);

/*exercicios*/
select profissao, count(*) from gafanhotos
group by profissao;

select sexo, count(*) from gafanhotos where nascimento > '2005/01/01'
group by sexo;

select nacionalidade, count(*) from gafanhotos where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;

select altura, count(*) from gafanhotos where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);