DROP DATABASE IF EXISTS atividade1;

CREATE DATABASE atividade1;

\c atividade1;

CREATE TABLE superheroi (
    id serial primary key,
    nome character varying(100) not null,
    bairro text,
    rua text,
    cep character(8),
    nro character varying(6),
    mentor_id integer references superheroi (id),
    CHECK (mentor_id != id)
);
INSERT INTO superheroi (nome) VALUES
('HULK'),
('BATMAN'),
('HOMEM DE FERRO');

INSERT INTO superheroi (nome, mentor_id) VALUES
('HOMEM ARANHA', 3);

CREATE TABLE equipe (
    id serial primary key,
    nome character varying(100) not null
);
INSERT INTO equipe (nome) VALUES
('VINGADORES'),
('LIGA DA JUSTIÇA');

CREATE TABLE poder (
    id serial primary key,
    descricao text not null
);
INSERT INTO poder (descricao) VALUES
('FORÇA'),
('RAIO LASER'),
('FLEXIBILIDADE'),
('RICO'),
('TEIA');

CREATE TABLE missao (
    id serial primary key,
    descricao text not null,
    data_inicio date default current_date,
    data_fim date
);

INSERT INTO missao (descricao) VALUES
('THANOS');

CREATE TABLE superheroi_missao (
    -- ex1
    superheroi_id integer,
    -- ex2
    missao_id integer references missao (id),
    data_inicio date default current_date,
    data_fim date,
    foreign key (superheroi_id) references superheroi (id),
    primary key (superheroi_id, missao_id, data_inicio)
);

INSERT INTO superheroi_missao(superheroi_id, missao_id) VALUES
(1, 1),
(3, 1),
(4, 1);

CREATE TABLE equipe_superheroi (
    equipe_id integer references equipe (id),
    superheroi_id integer references superheroi (id),
    primary key (equipe_id, superheroi_id)
);
INSERT INTO equipe_superheroi (superheroi_id, equipe_id) VALUES
(1, 1),
(3, 1),
(4, 1);

CREATE TABLE superheroi_poder (
    poder_id integer references poder (id),
    superheroi_id integer references superheroi (id),
    primary key (poder_id, superheroi_id)
);
INSERT INTO superheroi_poder (poder_id, superheroi_id) VALUES
(4, 4),
(1, 1),
(4, 2),
(4, 3);

