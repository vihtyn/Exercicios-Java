create database biblioteca_escolar;

use biblioteca_escolar;

create table pessoa(
	cpf varchar(11) primary key not null, 
	nome varchar(50) not null,
    data_nascimento date
);

insert into pessoa(cpf, nome, data_nascimento)
values 
("07439080157", "Victor Caldas Nery", "2006-02-09"),
("09876548890", "Machado de asis", "1921-02-28"),
("00122456789", "Renan Hiroshi", "2006-10-23");

insert into pessoa(cpf, nome, data_nascimento)
values
("07772331112", "Kaua Henrique", "2005-07-06"),
("86043020932", "Raul Rodrigues", "1993-04-26"),
("12345678912", "Gabriel Cremozinho Franklin", "2003-3-9");

create table autor(
	id int primary key auto_increment,
    cpf_pessoa varchar(100) not null,
    constraint fk_pessoa_autor
    foreign key (cpf_pessoa) references pessoa(cpf)
);

insert into autor(cpf_pessoa)
values
("09876548890");

insert into autor(cpf_pessoa)
values
("12345678912"),
("07772331112");

create table livro(
	isbn int primary key auto_increment not null,
    titulo varchar(100) not null,
    ano date not null,
    editora varchar(100),
    autor_id int not null,
    constraint fk_autor_tem
    foreign key (autor_id) references autor(id)
);

insert into livro(isbn, titulo, ano, editora, autor_id)
values
(1,"Ilíada, de Homero.", "1999-12-8", "Editora 1" ,1),
(2, "A divina comédia, de Dante Alighieri.", "1935-6-7","Editora 2",1),
(3, "Dom Casmurro", "1947-9-9", "Editora 3" ,1);

UPDATE livro SET autor_id = 1 WHERE isbn = 1;
UPDATE livro SET autor_id = 2 WHERE isbn = 2;
UPDATE livro SET autor_id = 3 WHERE isbn = 3;

create table aluno(
	matricula varchar(20) primary key unique,
    entrada date not null, 
    ativo boolean default true not null,
    inativo boolean default false not null,
    aluno_cpf varchar(11) not null,
    constraint fk_pessoa_aluno
    foreign key (aluno_cpf) references pessoa(cpf)
);

insert into aluno(matricula, entrada, ativo, inativo, aluno_cpf)
values
("UC24102036", "2024-3-12", true, false,"00122456789"),
("UC24101363", "2024-03-12", false, true,"07439080157");

insert into aluno(matricula, entrada, ativo, inativo, aluno_cpf)
values
("UC24101256", "2024-07-28", true, false,"86043020932");

create table emprestimo(	
	id int primary key auto_increment,
    data_emprestimo timestamp default current_timestamp,
    data_devolucao  timestamp null,
    matricula_emprestimo varchar(20),
    isbn_emprestimo int not null,
    constraint fk_aluno_emprestimo
    foreign key (matricula_emprestimo) references aluno(matricula),
    constraint fk_livro_emprestimo
    foreign key (isbn_emprestimo) references livro(isbn) 
);

insert into emprestimo(data_emprestimo,matricula_emprestimo, isbn_emprestimo)
values
("2025-6-20","UC24102036",2),
("2025-9-8", "UC24101363", 1);

insert into emprestimo(data_emprestimo,matricula_emprestimo, isbn_emprestimo)
values
("2025-3-25", "UC24101256", 3);

create table curso(
	codigo int primary key not null,
    nome_curso varchar(100) not null,
    matricula_curso varchar(20) not null,
    constraint fk_aluno_cursa
    foreign key (matricula_curso) references aluno(matricula)
);

insert into curso(codigo, nome_curso, matricula_curso)
values
(120, "Ciencia da computação", "UC24102036"),
(123, "Engenharia de Sftware", "UC24101363");

insert into curso(codigo, nome_curso, matricula_curso)
values
(124, "Direito", "UC24101256");

create table turma(
	codigo int primary key not null,
    semestre int not null,
    turma_matricula varchar(20) not null,
    constraint fk_aluno_turma
    foreign key (turma_matricula) references aluno(matricula)
);

insert into turma(codigo, semestre, turma_matricula)
values
(12, 6, "UC24102036"),
(13, 3, "UC24101363");

insert into turma(codigo, semestre, turma_matricula)
values
(11, 7, "UC24101256");

select * from pessoa;
select * from autor;
select * from livro;
select * from aluno;
select * from emprestimo;
select * from curso;
select * from turma;