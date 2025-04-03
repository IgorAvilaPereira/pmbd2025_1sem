DROP DATABASE IF EXISTS exercicio1;

CREATE DATABASE exercicio1;

\c exercicio1;

CREATE TABLE gravadora (
    id serial primary key,
    site text,
    nome text not null,
    endereco text,
    contato text
);



CREATE TABLE album (
    id serial primary key,
    titulo text,
    data_lancamento date,
--    fk
    gravadora_id integer references gravadora (id),
    -- fk
    indicado_id integer references album (id)
);

