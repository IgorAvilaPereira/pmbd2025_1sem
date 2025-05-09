--  apagando bd caso exista previamente 
DROP DATABASE IF EXISTS pronto_trauma;
-- comando de criacao do banco pronto trauma
CREATE DATABASE pronto_trauma;

-- conectando no bd recem criado (pelo comando acima)
\c pronto_trauma;

CREATE TABLE medico (
    crm character(5) primary key,
    email character varying(100) unique not null,
    nome character varying(150) not null
);

INSERT INTO medico (crm, nome, email) VALUES
('12345', 'VERGARA', 'vergara@riogrande.ifrs.edu.br');


CREATE TABLE especialidade (
    id serial primary key,
    nome text not null
);
INSERT INTO especialidade (nome) VALUES
('ORTOPEDIA'),
('CARDIOLOGIA');

CREATE TABLE medico_especialidade (
    -- criando a coluna + a fk
    medico_crm character varying(5) references medico (crm),
    -- criando a coluna + a fk
    especialidade_id integer references especialidade (id),
    -- definindo minha pk composta
    primary key (medico_crm, especialidade_id)   
);
INSERT INTO medico_especialidade (medico_crm, especialidade_id) VALUES
('12345', 1);

CREATE TABLE paciente (
    cpf character(11) primary key,
    data_nascimento date,
    nome character varying(150) not null,
    email character(100) unique,
    bairro text,
    rua text,
    complemento text,
    nro character varying(5)
);
INSERT INTO paciente (cpf, nome, data_nascimento) VALUES
('12312312312', 'IGOR PEREIRA', '1987-01-20');

CREATE TABLE telefone (
    nro character(10) primary key,    
    paciente_cpf character(11) references paciente (cpf)
);
INSERT INTO telefone (nro, paciente_cpf) VALUES
('5312312312', '12312312312');

CREATE TABLE consulta (
    id serial primary key,
    data_hora_inicio timestamp,
    data_hora_fim timestamp,
    medico_crm character(5) references medico (crm),
    paciente_cpf character(11) references paciente (cpf)
);
INSERT INTO consulta (data_hora_inicio, data_hora_fim, medico_crm, paciente_cpf) VALUES
(CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '1 hour', '12345', '12312312312');

CREATE TABLE exame (
    id serial primary key,
    data_hora timestamp,
    realizado boolean DEFAULT false,
    diagnostico text,
    descricao text not null,
    consulta_id integer references consulta (id)
);

-- selecionar todas as colunas de todos os medicos
-- select * from medico;

-- selecionando somente o nome de todos os medicos
-- select nome from medico;

-- selecionando o email e o nome de todos os medicos
-- select email,nome from medico;

INSERT INTO medico (crm, nome, email) VALUES
('54321', 'JOÃO', 'joao@bol.com');


INSERT INTO medico (crm, nome, email) VALUES
('33333', 'ANA', 'ana@vetorial.net');

INSERT INTO consulta (data_hora_inicio, data_hora_fim, medico_crm, paciente_cpf) VALUES
(CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '1 hour', '33333', '12312312312');

INSERT INTO consulta (data_hora_inicio, data_hora_fim, medico_crm, paciente_cpf) VALUES
(CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '1 hour', '33333', '12312312312');

INSERT INTO consulta (data_hora_inicio, data_hora_fim, medico_crm, paciente_cpf) VALUES
(CURRENT_TIMESTAMP, CURRENT_TIMESTAMP + INTERVAL '1 hour', '12345', '12312312312');

-- selecionando apenas medicos que se chamam VERGARA
-- select email,nome from medico where nome = 'VERGARA';

-- deletando o joao
-- DELETE FROM medico WHERE crm = '54321';

-- atualizando o nome
-- UPDATE medico SET nome = 'Ricardo Freitas Vergara' WHERE crm = '12345';

-- Ordenando de forma descrescente e crescente
-- select email,nome from medico ORDER BY nome DESC, crm ASC;

-- limitar nro de linhas retornadas
select email,nome from medico ORDER BY nome DESC, crm ASC LIMIT 10;

-- exemplo de where (filtro) com ordenacao
select email,nome from medico where nome = 'ANA' ORDER BY nome DESC, crm ASC;

-- delete from consulta where medico_crm = '12345' and paciente_cpf = '12312312312';

-- select nome, extract(year from age(data_nascimento)) as idade from paciente;


