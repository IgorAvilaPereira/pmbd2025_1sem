### Trabalho 1

**Descrição**

Vamos criar um Diagrama Entidade-Relacionamento (DER) e um Modelo Relacional para um portal de artigos, semelhante ao Medium. Este portal permitirá que usuários publiquem artigos, comentem e curtam artigos, e que haja categorias para organizar os conteúdos.

**Explicação**

* Usuário: Armazena informações sobre os usuários do portal.
    * Email
    * Nome
    * Senha
    * Data de Cadastro
    * Data de Nascimento e idade
    * telefones
    * Endereço: bairro, complemento, nro, cep, rua
    
* Artigo: Armazena os artigos escritos pelos usuários, com referência ao autor (Usuário) e à categoria.
    * Titulo
    * Data/hora da Publicação
    * Tem relacionamento com Categoria e com Usuário

* Categoria: Armazena as categorias dos artigos.
    * Nome
    
* Comentário: Armazena os comentários feitos nos artigos, com referência ao autor do comentário (Usuário) e ao artigo comentado.
    * Conteudo
    * Data e Hora do Comentário
    * Tem relacionamento com Usuário e Artigo
    
* Curtida: Armazena as curtidas nos artigos, com referência ao usuário que curtiu e ao artigo curtido.
   * Data e Hora
   * Relacionamento com Artigo e Usuário
   
obs: para minimizar a complexidade do trabalho, comentários não são cabíveis de curtida - somente os artigos

**Entidades Principais**

* Usuário: Representa os escritores e leitores.
* Artigo: Representa os artigos escritos pelos usuários.
* Categoria: Representa as categorias dos artigos.
* Comentário: Representa os comentários feitos nos artigos.
* Curtida: Representa as curtidas nos artigos.

**Relacionamentos**

* Um Usuário pode escrever vários Artigos.
* Um Artigo pertence a uma Categoria.
* Um Artigo pode ter vários Comentários.
* Um Usuário pode fazer vários Comentários.
* Um Usuário pode curtir vários Artigos.

&nbsp;
