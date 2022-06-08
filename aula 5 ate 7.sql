
select distinct count(nacionalidade) as total_nacionalidades from gafanhotos;

select nome,descricao,ano from cursos 
where ano != '2015'
order by ano;


select * from cursos
where nome LIKE 'ph%p_' or 'j%a';

select lower(nome) as nome_tratado,ano as ano_tratado from cursos
where ano between 2014 and 2016;


select e.nome,e.carga,e.totaulas 
from cursos as e
where e.carga > 35 or e.totaulas < 30
order by e.nome;


select nome,sexo from gafanhotos
where sexo = 'F';

select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31';

select nome,profissao,sexo from gafanhotos
where profissao = 'PROGRAMADOR' and sexo = 'M';


select nome,sexo,nacionalidade from gafanhotos
where nome like 'j%' and nacionalidade = 'Brasil' and sexo = 'F';


select nome,nacionalidade from gafanhotos
where nome like '%silva%' and nacionalidade <> 'Brasil' and peso < 100.00;



select MAX(altura) from gafanhotos
where  sexo = 'M' and nacionalidade = 'Brasil';


select avg(peso) from gafanhotos
where sexo = 'M';

select nome,min(peso) as peso,sexo,nacionalidade,nascimento from gafanhotos
where nacionalidade <> 'Brasil' and sexo = 'F' and nascimento between '1990-01-01' and '2000-12-31';




select nome, count(*) as quantidade, altura from gafanhotos
group by nome
order by nome;


select ano, count(*) as qtd from cursos
group by ano
having count(ano) >= 5
order by count(*) desc;

select profissao,count(profissao) as num_prof from gafanhotos
where sexo = 'M'
group by profissao; 



select sexo,count(*) as quantidade from gafanhotos
where nascimento > '2005-01-01' 
group by sexo;

select nome,nacionalidade,count(*) as qtd_pessoas from gafanhotos  
group by nacionalidade
having nacionalidade <> 'Brasil' and qtd_pessoas > 3;




select avg(altura) from gafanhotos;

select altura, count(*) as quantidade from gafanhotos
where peso > '100'
group by altura
having altura > (select avg(altura)from gafanhotos);









