# pmbd2025_1sem <br>
## [./1_introducao](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/./1_introducao) <br>
[etapas.png](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/etapas.png) <br>
[exemplo.dia](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/exemplo.dia) <br>
[introducao_banco_de_dados.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/introducao_banco_de_dados.md) <br>
[introducao-er.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/introducao-er.md) <br>
[introducao-er.pdf](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/introducao-er.pdf) <br>
[relacionamentos-er.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/relacionamentos-er.md) <br>
[setup.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/setup.md) <br>
[imagens](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./1_introducao/imagens) <br>
## [./2_aula](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/./2_aula) <br>
[mapa_mental.png](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./2_aula/mapa_mental.png) <br>

* Especialização

* Entidade Fraca

* Entidade Associativa <br><br>
[resumo2.png](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./2_aula/resumo2.png) <br>
[resumo3.png](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./2_aula/resumo3.png) <br>
## [./3_aula](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/./3_aula) <br>
[entidade-associativa.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./3_aula/entidade-associativa.md) <br>
[entidade-fraca.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./3_aula/entidade-fraca.md) <br>
[periodico.drawio](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./3_aula/periodico.drawio) <br>
[periodico.drawio.png](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./3_aula/periodico.drawio.png) <br>
* Entidade Fraca e continuação Lista ER

**Opcional:**

* Entidade Associativa


**Material Complementar:**

* [Video - Recapitulação + Entidade Fraca + Generalização/Especialização](https://www.youtube.com/watch?v=WuOItyxbKQc)



[imagens](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./3_aula/imagens) <br>
## [./4_aula](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/./4_aula) <br>
[conversao-entre-modelos-er-e-relacional.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./4_aula/conversao-entre-modelos-er-e-relacional.md) <br>
[modelo-relacional.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./4_aula/modelo-relacional.md) <br>
[principais-tiposdedados-postgresql.png](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./4_aula/principais-tiposdedados-postgresql.png) <br>
<!--
Modelagem Lógica (Modelo Relacional)

[Modelagem Conceitual (ER) + Modelagem Lógica (Modelo Relacional Incompleto) da Universidade](https://github.com/IgorAvilaPereira/pmbd2024_2sem/blob/main/universidade.dia)

[Implementação Física Incompleta - Universidade (script.sql)](https://github.com/IgorAvilaPereira/pmbd2024_2sem/blob/main/sql.sql)

[Lista 1](https://github.com/IgorAvilaPereira/pmbd2024_2sem/wiki/Listas#lista-er)

**Conversão - ER para Modelo Relacional**

* [Slides](https://github.com/IgorAvilaPereira/pmbd2024_2sem/raw/main/transformacao-er-modelo-relacional.pdf)

* [Principais Tipos de Dados - PostgreSQL](https://github.com/IgorAvilaPereira/pmbd2024_2sem/blob/main/principais-tiposdedados-postgresql.png)

-->

[Vídeos](https://youtube.com/playlist?list=PLvT8P1q6jMWdCXVwsdO3UAPAn743vHccK)

<!--[Dicionário de Dados](https://github.com/IgorAvilaPereira/pmbd2023_1sem/blob/main/10dicionario-de-dados.md)-->

<!--
**Leitura Complementar:**

* [Introdução a Modelagem Lógica - Modelo Relacional](modelo-relacional.md)

* [Conversão - DER para Modelo Relacional (_em texto_)](https://github.com/IgorAvilaPereira/pmbd2024_2sem/blob/main/8conversao-entre-modelos-er-e-relacional.md)

-->

<!--
[Conversão - DER para Modelo Relacional (Herança)](https://github.com/IgorAvilaPereira/pmbd2023_1sem/blob/main/9conversao-entre-modelos-er-e-relacional-heranca.md)
-->

**Resumo (usar com cautela):**

* Entidades Forte, Fraca e Associativa tornam-se, com grande frequência, tabelas.
* Atributos identificadores tornam-se chaves primárias.
* Relacionamentos _1:n_ exigem a criação de uma coluna adicional na tabela referente ao _n_ do relacionamento, denominada de chave estrangeira.
* Relacionamentos com atributos, geralmente, fazem com que estes relacionamentos sejam mapeados como tabelas.
* Relacionamentos _n:m_ (muitos para muitos) devem ser quebrados em 2 relacionamentos _1:n_ e exigem a criação de uma tabela intermediária 
* Atributos multivalores tornam-se tabelas.
* Atributos compostos podem se transformar em 1) colunas (o que a literatura diz) ou em uma 2) nova tabela + um relacionamento _1:n_ com a tabela resultante da entidade que, anteriormente, tinha o atributo composto (solução prática que permite mais uma instância do atributo composto).
* Especialização/Generalização podem gerar (1) uma única tabela, (2) uma tabela para cada entidade filha ou (3) uma tabela para cada entidade.



[transformacao-er-modelo-relacional.pdf](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./4_aula/transformacao-er-modelo-relacional.pdf) <br>
[exemplos](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./4_aula/exemplos) <br>
[imagens](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./4_aula/imagens) <br>
## [./cronograma](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/./cronograma) <br>

**1 bim.**
* 10/04 -> er (5.0)
* 08/05 -> modelo relacional (5.0)
 obs: com consulta/presencial

**2 bim**
* modelo relacional e implementação física (SQL)


## [./listas](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/./listas) <br>
[escola.dia](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./listas/escola.dia) <br>
[lista-er.dia](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./listas/lista-er.dia) <br>
[lista_er.md](https://github.com/IgorAvilaPereira/pmbd2025_1sem/blob/main/./listas/lista_er.md) <br>
## [./videos](https://github.com/IgorAvilaPereira/pmbd2025_1sem/tree/main/./videos) <br>
**DER:**

* https://www.youtube.com/watch?v=WuOItyxbKQc
* https://www.youtube.com/watch?v=Yz40xfg-Gi8
* https://www.youtube.com/watch?v=Z6zCFfn_n8Q
* https://www.youtube.com/watch?v=8roMCSjNbeE
