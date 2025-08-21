create database biblioteca;

	use biblioteca;

	create table autor(
		id int not null primary key auto_increment,
		nome varchar(100) not null
	);

	create table livro(
		isbn int not null primary key,
		titulo varchar(100) not null,
		ano date not null,
		autor_id int,
		foreign key (autor_id) references autor (id)
	);
	
	create table pessoa(
		id int not null primary key auto_increment,
		cpf varchar(11) not null,
		nome varchar(100) not null,
		data_nascimento date not null,
		saldo float not null
	);

	create table relacao(
		id int primary key auto_increment not null,
		data_devolucao date,
		data_emprestimo date not null,
		isbn_rel int not null,
		id_pessoa int not null,
		foreign key (isbn_rel) references livro (isbn),
		foreign key (id_pessoa) references pessoa (id)
	);

	insert into autor (nome) values ('Machado de assis');
	insert into livro (isbn, titulo, ano, autor_id) values (123, 'Memorias Postumas de Braz Cubas', '1999-09-23', 1);
	insert into pessoa (cpf, nome, data_nascimento, saldo) values ("07439080157", "Victor Caldas Nery",'2006-02-09',10000);
	insert into relacao (data_emprestimo, isbn_rel, id_pessoa) values ('2025-5-4', 123, 1);

	select * from autor;
    select isbn, titulo, ano, autor_id from livro;
    select id, cpf, nome, data_nascimento, saldo from pessoa;
    select data_devolucao, data_emprestimo, isbn_rel, id_pessoa from relacao;