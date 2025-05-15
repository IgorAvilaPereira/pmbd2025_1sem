-- sql
DROP DATABASE IF EXISTS clube_livro;
CREATE DATABASE clube_livro;

-- pgsql 
\c clube_livro;

CREATE TABLE turma (
    id serial primary key,
    nome character varying(150) not null
);
INSERT INTO turma (nome) VALUES ('pmbd');

CREATE TABLE aluno (
    nro_matricula character(10) primary key,
    nome character varying(150) not null,
    turma_id integer references turma (id)
);
INSERT INTO aluno (nro_matricula, nome, turma_id) VALUES
('2024018766','JAAZIEL', 1);

CREATE TABLE editora (
    cnpj character(14) primary key,
    nome text not null
);
INSERT INTO editora (cnpj, nome) VALUES
('12312312312312', 'EDITORA DO IFRS');

CREATE TABLE area (
    id serial primary key,
    nome text not null
);
INSERT INTO area (nome) VALUES
('BANCO DE DADOS'),
('WEB');

CREATE TABLE livro (
    isbn character(13) primary key,
    titulo text not null,
    ano_publicacao integer,
    editora_cnpj character(14) references editora (cnpj),
    area_id integer references area (id)
);
INSERT INTO livro(isbn, titulo, editora_cnpj, area_id) VALUES
('1231231231231', 'BANCO DE DADOS SEGUNDO IGOR', '12312312312312', 1);

CREATE TABLE exemplar (
    ordem integer check(ordem >= 1),
    livro_isbn character(13) references livro (isbn),
    primary key (ordem, livro_isbn)
);
INSERT INTO exemplar (ordem, livro_isbn) VALUES
(1, '1231231231231'),
(2, '1231231231231');

CREATE TABLE emprestimo (
    id serial primary key,
    data_hora_emprestimo timestamp default current_timestamp,
    data_hora_devolucao timestamp,
    data_hora_expectativa timestamp default current_timestamp + INTERVAL '7 days',
    aluno_nro_matricula character(10) references aluno (nro_matricula),
    -- fk de exemplar?
    ordem integer,
    livro_isbn character(13),
    FOREIGN KEY (ordem, livro_isbn) references exemplar (ordem, livro_isbn)
   
);

INSERT INTO emprestimo (aluno_nro_matricula, ordem, livro_isbn) VALUES
('2024018766', 1, '1231231231231');

CREATE TABLE doacao (
    id serial primary key,
    data_hora timestamp default current_timestamp,
    aluno_nro_matricula character(10) references aluno (nro_matricula),
    -- fk de exemplar?    
    ordem integer,
    livro_isbn character(13),
    FOREIGN KEY (ordem, livro_isbn) references exemplar (ordem, livro_isbn)    
);





