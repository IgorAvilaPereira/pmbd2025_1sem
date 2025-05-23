<!-- 
## Lista

```sql
-- Tabela para Super_Heroi
CREATE TABLE Super_Heroi (
    codigo_heroi INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    rua VARCHAR(255),
    numero VARCHAR(10),
    complemento VARCHAR(100),
    cidade VARCHAR(100),
    estado VARCHAR(50),
    cep VARCHAR(10),
    codigo_equipe INT, -- Chave estrangeira para Equipe
    codigo_mentor INT, -- Chave estrangeira para Super_Heroi (mentor)
    FOREIGN KEY (codigo_equipe) REFERENCES Equipe(codigo_equipe),
    FOREIGN KEY (codigo_mentor) REFERENCES Super_Heroi(codigo_heroi)
);

-- Tabela para Equipe
CREATE TABLE Equipe (
    codigo_equipe INT PRIMARY KEY,
    nome_equipe VARCHAR(100) NOT NULL
);

-- Tabela para Poder
CREATE TABLE Poder (
    codigo_poder INT PRIMARY KEY,
    descricao_poder VARCHAR(255) NOT NULL
);

-- Tabela de relacionamento N:M entre Super_Heroi e Poder
CREATE TABLE Super_Heroi_Poder (
    codigo_heroi INT,
    codigo_poder INT,
    PRIMARY KEY (codigo_heroi, codigo_poder),
    FOREIGN KEY (codigo_heroi) REFERENCES Super_Heroi(codigo_heroi),
    FOREIGN KEY (codigo_poder) REFERENCES Poder(codigo_poder)
);

-- Tabela para Missao
CREATE TABLE Missao (
    codigo_missao INT PRIMARY KEY,
    descricao_missao VARCHAR(255) NOT NULL,
    data_inicio_missao DATE NOT NULL,
    data_fim_missao DATE NOT NULL
);

-- Tabela de relacionamento N:M entre Super_Heroi e Missao
CREATE TABLE Super_Heroi_Missao (
    codigo_heroi INT,
    codigo_missao INT,
    data_inicio_participacao DATE NOT NULL,
    data_fim_participacao DATE NOT NULL,
    PRIMARY KEY (codigo_heroi, codigo_missao),
    FOREIGN KEY (codigo_heroi) REFERENCES Super_Heroi(codigo_heroi),
    FOREIGN KEY (codigo_missao) REFERENCES Missao(codigo_missao)
);
```

---
-->

## Exercícios SQL

### Inserção de Dados

1.  **Inserir Equipes:**
    * Insira três equipes: "Liga da Justiça", "Vingadores" e "X-Men".

2.  **Inserir Poderes:**
    * Insira pelo menos cinco poderes: "Super Força", "Voo", "Telepatia", "Riqueza", "Mimetismo".

3.  **Inserir Super-Heróis:**
    * Insira cinco super-heróis, garantindo que pelo menos um não tenha equipe e um tenha um mentor (que também deve ser um super-herói já inserido). Pelo menos um super-herói não deve ter participado de nenhuma missão.
        * Exemplos: "Superman" (Liga da Justiça), "Batman" (Liga da Justiça, mentor: Superman), "Homem de Ferro" (Vingadores), "Professor Xavier" (X-Men), "Flash" (sem equipe).

4.  **Atribuir Poderes a Super-Heróis:**
    * Associe pelo menos dois poderes a cada super-herói inserido. Lembre-se que cada super-herói deve ter pelo menos um poder.

5.  **Inserir Missões:**
    * Insira três missões com datas de início e fim: "Resgate da Cidade" (01/01/2024 - 15/01/2024), "Combate a Ameaça Alienígena" (20/02/2024 - 28/02/2024), "Investigação Subterrânea" (10/03/2024 - 12/03/2024).

6.  **Registrar Participação em Missões:**
    * Registre a participação de super-heróis em missões, especificando o período de participação. Lembre-se que um super-herói pode não ter participado de nenhuma missão.
        * Exemplo: Superman participou da "Resgate da Cidade" de 01/01/2024 a 10/01/2024.

---

### Consultas Simples (SELECT)

1.  **Listar todos os Super-Heróis:**
    * Recupere o código, nome e endereço completo de todos os super-heróis.

2.  **Super-Heróis com Mentor:**
    * Liste o nome de todos os super-heróis que possuem um mentor, juntamente com o nome do seu mentor.

3.  **Super-Heróis e Suas Equipes:**
    * Mostre o nome de cada super-herói e o nome da equipe a qual ele pertence. Inclua super-heróis que não pertencem a nenhuma equipe.

4.  **Poderes de um Super-Herói Específico:**
    * Liste todos os poderes do super-herói "Superman" (ou outro super-herói que você inseriu).

5.  **Missões e Seus Participantes:**
    * Para cada missão, liste sua descrição e o nome de todos os super-heróis que participaram dela, incluindo o período de participação de cada herói na missão.

6.  **Super-Heróis sem Equipe:**
    * Recupere o nome e o código de todos os super-heróis que não estão associados a nenhuma equipe.

7.  **Missões Ativas em um Período:**
    * Liste as missões que estavam ativas (data de início da missão <= '2024-02-15' e data de fim da missão >= '2024-02-15').

---
<!--

### Consultas com Agregação e Condições

1.  **Contar Super-Heróis por Equipe:**
    * Mostre o nome de cada equipe e o número total de super-heróis que pertencem a ela. Inclua equipes que não têm super-heróis.

2.  **Total de Poderes por Super-Herói:**
    * Para cada super-herói, mostre seu nome e a quantidade de poderes que ele possui.

3.  **Super-Heróis que Participaram de Mais de Uma Missão:**
    * Liste o nome dos super-heróis que participaram de duas ou mais missões.

4.  **Missões com Mais de X Super-Heróis:**
    * Liste a descrição das missões que tiveram mais de 2 super-heróis participantes.

5.  **Poderes Compartilhados:**
    * Liste a descrição dos poderes que são compartilhados por mais de um super-herói.

6.  **Super-Heróis Inativos em Missões:**
    * Encontre o nome de super-heróis que ainda não participaram de nenhuma missão.

---
-->

### Atualização e Exclusão de Dados

1.  **Atualizar Endereço:**
    * Atualize o endereço de um super-herói específico (ex: "Superman" mudou para a Rua Nova, Nº 123).

2.  **Adicionar Poder a um Super-Herói:**
    * Adicione um novo poder (ex: "Telecinese") a um super-herói existente.

3.  **Remover Super-Herói de uma Equipe:**
    * Defina um super-herói (ex: "Homem de Ferro") como sem equipe.

4.  **Excluir Participação em Missão:**
    * Remova o registro de participação de um super-herói em uma missão específica (ex: "Flash" não participou da missão "Resgate da Cidade").

5.  **Excluir um Super-Herói:**
    * Exclua um super-herói, garantindo que todas as suas referências em tabelas de relacionamento também sejam removidas (ex: "Flash").

---