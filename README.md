### **Projeto**:

Sistema de Gerenciamento de Biblioteca

### **Objetivo**:

Projetar um banco de dados para um sistema de gerenciamento de biblioteca, permitindo o armazenamento e a recuperação eficiente de informações sobre livros, autores, clientes e empréstimos.

### **Entrega**:

A entrega deverá ser realizada até o dia 07/08

### O que deve ser entregue:

*   Link do Github com o projeto rails utilizado:
    *   Deve ter os arquivo com as migrações realizadas e;
    *   O schema do banco de dados gerado a partir das migrations;
*   Diagrama gerado (pode ser o link compartilhavel do **dbdiagram**). - https://dbdiagram.io/d/64cd3d2402bd1c4a5e441f69

### **O que deve ser feito:**

1. **Identificar as entidades principais:**
    *   **Livro**: armazena informações sobre os livros, como título, autor, editora e número de exemplares.
    *   **Autor**: mantém informações sobre os autores, como nome, data de nascimento e país de origem.
    *   **Cliente**: contém informações sobre os clientes, como nome, endereço e número de telefone.
    *   **Empréstimo**: registra os empréstimos feitos pelos clientes, relacionando o livro emprestado, o cliente que o pegou emprestado e as datas de empréstimo e devolução.
2. **Identificar os atributos de cada entidade:**
    *   **Livro**: id\_livro, título, editora, número de exemplares, isbn.
    *   **Autor**: id\_autor, nome, data de nascimento, país de origem.
    *   **Cliente**: id\_cliente, nome, endereço, número de telefone.
    *   **Empréstimo**: id\_empréstimo, id\_livro, id\_cliente, data de empréstimo, data de devolução.
3. **Definir as relações entre as entidades:**
    *   Um livro pode ter vários autores, e um autor pode escrever vários livros. Portanto, há uma relação de muitos para muitos (M:N) entre as entidades Livro e Autor. Será necessário criar uma tabela adicional para representar essa relação, por exemplo, "LivroAutor", com os atributos id\_livro e id\_autor.
    *   Um cliente pode fazer vários empréstimos, e um empréstimo é feito por apenas um cliente. Portanto, há uma relação de um para muitos (1:N) entre as entidades Cliente e Empréstimo. O atributo id\_cliente será uma chave estrangeira na tabela Empréstimo.
4. **Definir as chaves primárias e estrangeiras:**
    *   Cada entidade terá uma chave primária única para identificá-la, como id\_livro, id\_autor, id\_cliente e id\_empréstimo.
    *   A tabela LivroAutor terá as chaves estrangeiras id\_livro e id\_autor, referenciando as tabelas Livro e Autor, respectivamente.
    *   A tabela Empréstimo terá a chave estrangeira id\_cliente, referenciando a tabela Cliente.
5. **Refinar o modelo, se necessário:**
    *   Nesse passo é interessante avaliar se a estrutura está boa, se é viável e implementável. Aqui é necessário utilizar um senso crítico e pensar: "essa abordage, e essas relações está correta? O que eu poderia mudar?" Se não houver nenhuma melhoria, apenas siga adiante. Porém, se houver, junto do link de entrega pontue os pontos que você notou nessa estrutura com relação ao projeto como um todo e as melhorias ou alterações que deveriam ser realizadas para melhorar o projeto.
6. **Criar o diagrama do banco de dados:**
    *   Utilize uma ferramenta de modelagem de banco de dados, como o MySQL Workbench ou o [https://dbdiagram.io/](https://dbdiagram.io/), para criar o diagrama que representa a estrutura do banco de dados, incluindo as tabelas, relacionamentos e atributos.
7. **Crie as migrações necessárias para a estruturação desse banco de dados em uma aplicação Rails 7:**
    *   Com base no modelo e no diagrama, escreva as migrações necessárias para implementação dese banco de dados em uma aplicação Rails para criar as tabelas e estabelecer os relacionamentos necessários e esperados.
8. **Teste e popule o banco de dados:**
    *   Implemente um arquivo de seed no Rails que popule todas as tabelas do banco e teste as relações.
