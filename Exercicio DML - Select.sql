create database Lista_de_exercicio;

use lista_de_exercicio;

create table empregado(
	RG varchar(8) primary key not null,
    sexo varchar(20) not null,
    dt_nasc date not null,
    pnome varchar(100) not null,
    unome varchar(100) not null,
    rua varchar(100) not null,
    cidade varchar (100) not null,
    estado varchar(100) not null,
    salario double not null,
    dnum_dep int not null,
    supRG varchar(8) not null,
    constraint fk_RGsupervisor
    foreign key (supRG) references empregado (RG),
    constraint fk_NumeroDepartamento
    foreign key (dnum_dep) references departamento(dnum)
);

create table departamento(
	dnum int primary key not null,
    dnome varchar(30) not null,
    gerRG varchar(8) not null,
    dt_inicio date not null
);

create table projeto(
	pnum int primary key auto_increment,
    proj_nome varchar(100) not null,
    proj_loc varchar(100) not null,
    dnum_proj int not null,
    constraint fk_numero_departamento_onde_o_projeto_esta
    foreign key (dnum_proj) references departamento(dnum)
);

create table dependente(
	emRG varchar(8) primary key not null,
	depen_nome varchar(100) not null,
    depen_sexo varchar(30) not null,
    depen_dt_nasc date not null,
    constraint fk_quem_e
    foreign key (empRG) references empregado(RG)
);

create table trabalha_em(
	RG varchar(8) not null,
    pnum int not null,
    horas decimal(4, 2) not null,
    primary key (RG, pnum),
    foreign key (RG) references empregado(RG),
    foreign key (pnum) references projeto(pnum)
);

create table localizacao(
	localizacao varchar (255) primary key not null,
    dnum int primary key,
    foreign key (dnum) references departamento(dnum) 
);

-- Questão 1 
select (RG) from empregado where dnum = 5;

-- Questão 2
select (RG) from empregado where salario > 3000;

-- Questão 3
select (RG) from empregado where dnum = 5 and salario > 3000;

-- Questão 4
select (RG) from empregado where dnum = 5 and salario > 3000 or dnum = 4;

-- Questão 5
select (pnome, salario) from empregado;

-- Questão 6
select (pnome, salario) from empregado where dnum = 5;

-- Questão 7
select (RG) from empregado where dnum = 5 union select (supRG) from empregado where dnum = 5 and supRG is not null;

-- Questão 8
select (pnome) from empregado inner join dependente on empregado.pnome = dependente.depen_nome;

-- Questão 9
select empregado.pnome, dependente.depen_nome from empregado cross join dependente;

-- Questão 10
select empregado.pnome, dependente.depen_nome from empregado inner join dependente on empregado.RG = dependente.emRG;

-- Questão 11
select dnome, pnome from departamento inner join empregado on departamento.gerRG = empregado.RG;

-- Questão 12 
select dnome,localizacao from departamento natural join localizacao;

-- Questão 13
select empregado.pnome, projeto.proj_nome from empregado inner join trabalha_em on empregado.RG = trabalha_em.RG inner join projeto on trabalha_em.pnum = projeto.pnum;

-- Questão 14
select empregado.pnome from empregado inner join trabalha_em on empregado.RG = trabalha_em.RG inner join projeto on trabalha_em.pnum = projeto.pnum where projeto.dnum = 5;

-- Questão 15
select count(*) as numero_de_empregados from empregados;

-- Questão 16
