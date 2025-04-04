# Lista ER

1. Construa um diagrama ER para a **administradora de imóveis** descrita abaixo:

* A administradora trabalha tanto com administração de condomínios quanto com a administração de aluguéis 

* Uma entrevista com o gerente da administradora resultou nas seguintes informações:

  * A administradora administra condomínios formados por unidades condominiais
  * Cada unidade condominial é de propriedade de uma ou mais pessoas. Uma pessoa pode possuir diversas unidades.
  * Cada unidade pode estar alugada para no máximo uma pessoa. Uma pessoa pode alugar diversas unidades.

2. Construa um diagrama ER para uma **academia**, descrita abaixo:

* A academia possui diversos clientes, registrando informações como nome, CPF, data de nascimento e telefone. Cada cliente recebe um código de registro único.
* A academia possui diversas atividades. Cada atividade dura 45 minutos e possui horários diferentes em diferentes dias da semana. Por exemplo, a academia pode oferecer pilates todas as segundas, quartas e sextas, às 08:00 e todas as terças e quintas, às 10:00.
* Para cada horário de atividade há um professor alocado.
* Cada cliente pode se matricular em planos. Um plano pode reunir uma ou mais atividades e possui um nome, um valor mensal e uma duração (em meses). Um cliente pode estar matriculado em mais de um plano.

3. Construa um diagrama ER para o sistema de uma **concessionária de veículos**. Essa concessionária trabalha com venda de veículos e deseja criar uma base de dados para o seu negócio. 

* Para qualquer veículo, sabemos o número do chassi, número da placa, cor, ano de fabricação e quilometragem. 
* Todo carro pertence a um modelo, e este modelo pertence a uma marca. 
* Como a concessionária vende veículos usados de diferentes marcas, é interessante haver um cadastro para as marcas e um cadastro para os modelos. 
* Para cada comprador de veículo deve-se registrar seu CPF, nome, estado civil e, se for casado, os dados do cônjuge (nome e CPF). 
* Para cada venda, são necessárias as seguintes informações: data da venda e valor da venda.

4. Uma turma do segundo ano do ensino médio resolveu formar um **clube do livro**. Como esses alunos são do curso técnico em informática, ele resolveram desenvolver um sistema para controlar isso. O clube vai funcionar assim:

* Cada aluno deve selecionar alguns livros que tenha em casa para disponibilizar ao clube.
* Esses livros serão colocados em caixas separadas por área (romance, ficção, policial, etc.). É interessante manter um cadastro de áreas.
* Sobre o livro é necessário saber: nome do livro, nome do autor, editora, ano de publicação e ISBN.
* Não pode haver livros repetidos.
* Sobre os alunos, precisa-se saber a matrícula do aluno, nome, telefone e turma a que pertence.
* Os livros podem ser emprestados aos alunos cadastrados, sendo necessário registrar a data do empréstimo e data da devolução. Deseja-se saber o histórico desses empréstimos, pois se o aluno atrasar a devolução mais de uma vez ele será banido do grupo. 

5. Construa um diagrama ER para um **estabelecimento comercial** onde se deseja:

* Registrar dados de produtos (código, nome, preço e quantidade em estoque). 
* Cada produto possui um fornecedor. É necessário registrar o nome, CNPJ e telefone do fornecedor.
* Registrar vendas de produtos. Para cada venda existe uma nota fiscal associada. 
* Cada nota deve possuir um ou mais itens, onde será registrada a quantidade comprada do produto.
* Cada item está associado a um produto.
* Cada venda é feita para um cliente, que deve ser cadastrado no sistema (registrando CPF, nome e telefone). 

6. Construa um diagrama ER para uma **base de dados de artigos científicos**. 

* Cada artigo possui um código, título, resumo, número de páginas e um nome de arquivo. 
* Cada artigo está associada uma ou mais palavras-chave. 
* Cada artigo possui um ou mais autores. Para cada autor, precisa-se registrar seu nome, código de registro e endereço de e-mail. 
* Cada autor deve estar associado a uma instituição. 
* Para cada instituição devem ser registrados seu código, nome e endereço. Cada artigo também está associado a um periódico. 
* Para cada periódico deve ser registrado seu nome, código e nível de qualificação na CAPES (uma letra). 

7. Construa um ER para o gerenciamento de **gravadoras de CD's** onde:

* Um **autor** tem **id** e um **nome**;
* Uma **música** tem **id**, **nome** e **duração**;
* Uma **gravadora** tem **id**, **nome**, **endereço**, **telefone**, **contato** e **site**;
* Um **CD** tem **id**, **nome**, **preço**, **data de lançamento**
* Além disso:
    * Um **autor pode compor várias músicas e uma música pode ser composta por vários autores**;
* **Um música pode estar em vários CD's e um CD pode ter várias músicas (faixas)**. Além disso, deve-se armazenar o **número da faixa** que cada música teve nos CD's que participou/integrou;
    * Músicas podem não ter nenhum autor;
    * **Uma gravadora produz vários CD's e um CD é produzido, exclusivamente, por uma única gravadora**;
    * **Para cada CD cadastrado na base dados é possível indicar um outro CD da base de dados, ou seja, cada CD pode recomendar um outro CD e, assim, sucessivamente**;

8. Construa um diagrama ER para uma **seguradora de automóveis** em que cada cliente possui um ou mais
carros. Cada carro tem associado a ele zero a qualquer número de acidentes registrados. Para cada cliente
é necessário registrar seu nome, CPF, número da CNH, endereço e telefone. Para cada carro, é necessário
registrar uma descrição, número da placa, número do chassi e quantidade de quilômetros rodados. Para
cada acidente registrar uma descrição, data, hora, local, e valor total dos danos.

9. Uma **universidade** deseja construir um banco de dados para armazenar o QSL (Quadro de Sequência
Lógica) de cada curso ofertado por ela. Todos os cursos nessa universidade são semestrais. Para cada
curso, deseja-se armazenar as seguintes informações: código do curso, nome, turno (diurno ou noturno) e
nível (graduação, especialização, mestrado ou doutorado). Cada curso é mantido por um departamento.
Para cada departamento deve ser registrados seu código e nome. Para cada curso existe um conjunto de
uma ou mais disciplinas. Para cada disciplina devem ser armazenados: um código, nome, créditos, carga
horária total, ementa e o número do semestre de oferecimento. Cada disciplina também possui zero ou mais
pré-requisitos, que são disciplinas que um determinado aluno deve ter concluído para poder se matricular
na disciplina em questão

10. Construa um diagrama ER para um **hospital**, onde se deseja armazenar dados sobre pacientes, exames
e médicos. Para cada paciente, devem ser guardados seu nome, CPF, RG, data de nascimento, endereço e
telefone. Para cada médico deseja-se guardar seu nome, telefone e número de registro no CRM (Conselho
Regional de Medicina). Cada médico pode possuir uma ou mais especialidades. Para cada especialidade
deve-se armazenar um código e um nome. Também deseja-se manter um registro de exames feitos por
cada paciente. O exame deverá ser requisitado por um médico. Para cada exame deve-se registrar data e
hora de realização, valor e uma descrição do mesmo.

11. A Jonesburgh County Basketball Conference (JCBC) é uma **liga amadora de basquete americano**. Cada cidade do país possui uma equipe como sua representante. Cada equipe tem no maximo 12 e no mínimo 9 jogadores. Cada equipe tem, ainda, até 3 técnicos (ofensivo, defensivo e geral). Durante a temporada, cada equipe joga dois jogos (em casa e como visitante) contra cada uma das outras equipes. Dadas essas condições, projete o modelo do banco de dados em nível conceitual (Diagrama ER) para armazenar os dados necessarios para a JCBC.

12.  Um **escritório de advocacia** deseja construir um banco de dados para armazenar dados de clientes, processos e advogados. Para cada cliente deseja-se registrar um código, nome, CPF, telefone para contato e endereço. Para cada processo, deseja-se guardar um código, data de abertura e descrição. Cada processo será aberto por um cliente e pode ser atendido por um ou mais advogados. Para cada advogado deseja-se registrar um código, nome, telefone, data de entrada na empresa e número de registro na OAB. Para cada processo devem ser armazenados também os dados de cada audiência relacionada a ele (um código, data, hora e local). Faça um modelo ER para este banco de dados.

13. Construir um modelo ER para o banco de dados de uma empresa de **locação de veículos**. A empresa em
questão aluga automóveis, camionetas de passageiros e camionetas de carga.

* Ela atende a dois mercados: o das pessoas físicas e o das pessoas jurídicas. Para acelerar o
atendimento, é importante conhecer os dados dos clientes que já tenham usado a locadora no passado.
* Para cada pessoa física, é necessário conhecer seu nome, sexo, data de nascimento, endereço e CPF. Já
para as pessoas jurídicas, é necessário conhecer seu nome, CNPJ e endereço. Os
clientes são identificados por um código interno à locadora.
* A empresa tem uma grande rede de filiais espalhadas pelo sul do país. Em um momento no tempo,
um veículo encontra-se sob responsabilidade de uma filial. Entretanto, como veículos podem ser alugados
para viagens em um sentido somente, eles podem mudar de filial. Um veículo é identificado pela sua placa.
Além disso, é necessário conhecer o número do chassi, o número do motor, o tipo de veículo e a cor de
cada veículo.

* O sistema em computador deverá informar:

  * os veículos disponíveis em determinada filial na data corrente;
  * as reservas para veículos em uma filial, com previsão de que veículos estarão disponíveis em uma
data futura;
  * os veículos presentemente alugados pela filial, o ponto de entrega (caso seja diferente do de
locação) e data de entrega prevista.

* Os veículos são classificados por uma tabela de tipos. Por exemplo, P3 corresponde a automóveis
pequenos, de quatro portas e com ar-condicionado e G4 a grandes automóveis de luxo. 
* As reservas não são feitas para uma marca ou modelo de veículo, mas para um tipo de veículo.
* Para tipos de automóveis, os clientes desejam saber o tamanho, classificado em pequeno, médio e grande, o número de passageiros, o número de portas, bem como se possui os seguintes acessórios: ar-condicionado, rádio e direção hidráulica/elétrica. Para tipos de caminhonetas de passageiros, as informações são as mesmas que para automóveis. Já para tipos de caminhonetas de carga, as informações acima não são
relevantes. Neste caso, os clientes desejam saber a capacidade de carga da camioneta.
* Para cada tipo de veículo, há um determinado número de horas necessário para limpeza e revisão de entrega, entre uma reserva e outra.
* A seguradora que segura os veículos exige que, para cada veículo alugado, seja mantida a identificação do motorista, o número de sua habilitação e data de vencimento da mesma.

14. Uma Escola tem várias turmas. Uma turma
tem vários professores, sendo que um
professor pode ministrar aulas em mais de
uma turma. Uma turma tem sempre aulas na
mesma sala, mas uma sala pode estar
associada a várias turmas (com horários
diferentes).

15. Um berçário deseja informatizar suas operações.
Quando um bebê nasce, algumas informações
são armazenadas sobre ele, tais como: nome,
data do nascimento, peso do nascimento, altura,
a mãe deste bebê e o médico que fez seu parto.
Para as mães, o berçário também deseja manter
um controle, guardando informações como:
nome, endereço, telefone e data de nascimento.
Para os médicos, é importante saber: CRM,
nome, telefone celular e especialidade.

16. Uma floricultura deseja informatizar suas
operações. Inicialmente, deseja manter um
cadastro de todos os seus clientes, mantendo
informações como: RG, nome, telefone e
endereço. Deseja também manter um cadastro
contendo informações sobre os produtos que
vende, tais como: nome do produto, tipo (flor,
vaso, planta,...), preço e quantidade em estoque.
Quando um cliente faz uma compra, a mesma é
armazenada, mantendo informação sobre o
cliente que fez a compra, a data da compra, o
valor total e os produtos comprados.

17. Uma Escola tem várias turmas. Uma turma
tem vários professores, sendo que um
professor pode ministrar aulas em mais de
uma turma. Uma turma tem sempre aulas na
mesma sala, mas uma sala pode estar
associada a várias turmas (com horários
diferentes).

18. Uma firma vende produtos de limpeza, e deseja melhor
controlar os produtos que vende, seus clientes e os
pedidos. Cada produto é caracterizado por um código,
nome do produto, categoria (ex. detergente, sabão em pó,
sabonete, etc), e seu preço. A categoria é uma
classificação criada pela própria firma. A firma possui
informações sobre todos seus clientes. Cada cliente é
identificado por um código, nome, endereço, telefone,
status ("bom", "médio", "ruim"), e o seu limite de crédito.
Guarda-se igualmente a informação dos pedidos feitos
pelos clientes. Cada pedido possui um número e guarda-se
a data de elaboração do pedido. Cada pedido pode
envolver de um a vários produtos, e para cada produto,
indica-se a quantidade deste pedida.

[Resoluções](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/listas)
