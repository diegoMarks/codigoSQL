create table if not exists cursos( 
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2016'
)default charset = utf8;

alter table cursos
add column id_curso int first;

alter table cursos
add primary key (id_curso); 