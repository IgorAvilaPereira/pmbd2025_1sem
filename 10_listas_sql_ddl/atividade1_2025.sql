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

--1) Inserir Equipes:
-- Insira três equipes: "Liga da Justiça", "Vingadores" e "X-Men".
INSERT INTO equipe (nome) VALUES
('X-Men');


--2) Inserir Poderes:
--Insira pelo menos cinco poderes: "Super Força", "Voo", "Telepatia", "Riqueza", "Mimetismo".
INSERT INTO poder (descricao) VALUES
('SUPER-FORÇA'),
('VOO'),
('TELEPATIA'),
('RIQUEZA');

/*
3) Inserir Super-Heróis:

Insira cinco super-heróis, garantindo que pelo menos um não tenha equipe e um tenha um mentor (que também deve ser um super-herói já inserido). Pelo menos um super-herói não deve ter participado de nenhuma missão.
Exemplos: "Superman" (Liga da Justiça), "Batman" (Liga da Justiça, mentor: Superman), "Homem de Ferro" (Vingadores), "Professor Xavier" (X-Men), "Flash" (sem equipe).
*/
INSERT INTO superheroi (nome) VALUES
('Superman');

INSERT INTO equipe_superheroi (superheroi_id, equipe_id) VALUES
(5, 2);

INSERT INTO superheroi (nome) VALUES
('Flash');

INSERT INTO equipe_superheroi (superheroi_id, equipe_id) VALUES
(6, 2);

INSERT INTO superheroi (nome) VALUES
('Professor Xavior');

INSERT INTO equipe_superheroi (superheroi_id, equipe_id) VALUES
(7, 3);

INSERT INTO superheroi (nome) VALUES
('Deadpool');

INSERT INTO equipe_superheroi (superheroi_id, equipe_id) VALUES
(2, 2);

-- 4) Atribuir Poderes a Super-Heróis:

-- 5) Inserir missões
INSERT INTO missao (descricao) VALUES
('MISSÃO JANAITON'),
('MISSÃO VERGARA');

-- 6) Registrar Participação em Missões:
INSERT INTO superheroi_missao (superheroi_id, missao_id) VALUES
(7, 1),
(8, 1);

-- 7) Listar todos os Super-Heróis:
SELECT * FROM superheroi;

-- 8) Missões e Seus Participantes:
SELECT superheroi.nome, missao.descricao FROM superheroi  INNER JOIN superheroi_missao ON (superheroi.id = superheroi_missao.superheroi_id) INNER JOIN missao ON (missao.id = superheroi_missao.missao_id);

-- 9) Super-Heróis sem Equipe:
SELECT * FROM superheroi WHERE id NOT IN (SELECT superheroi_id FROM equipe_superheroi);

-- 10) Missões Ativas em um Período:
SELECT * FROM missao WHERE data_fim IS NULL;


-- 11) Liste o nome e endereço de todos os super-heróis que moram em endereços que contenham a palavra "Rua".
UPDATE superheroi SET rua = 'Rua do IF' WHERE id = 1;
SELECT * FROM superheroi WHERE rua ILIKE 'RUA%';

-- 12) Liste todas as missões que ocorreram em março de 2024.
SELECT * FROM missao WHERE EXTRACT(MONTH FROM data_fim) = 6 and EXTRACT(YEAR FROM data_fim) = 2025;

-- 13) Liste todas as missões que ocorreram em março de 2024.
SELECT * FROM missao
where  
(EXTRACT(MONTH from data_inicio) <= 3 AND extract(year from data_inicio) <= 2024)
AND ((EXTRACT(MONTH FROM data_fim) <= 3 AND EXTRACT(YEAR FROM data_fim) <= 2024)
OR (EXTRACT(MONTH FROM data_fim) >= 3 AND EXTRACT(YEAR FROM data_fim) >= 2024)
OR data_fim IS NULL);

BEGIN;
DELETE FROM superheroi_poder where superheroi_id = 1;
DELETE FROM equipe_superheroi where superheroi_id = 1;
DELETE FROM superheroi_missao where superheroi_id = 1;
DELETE FROM superheroi where id=1;
COMMIT;


