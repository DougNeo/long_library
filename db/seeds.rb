puts ''
puts 'Criando registros...'
puts ''
# Livros
puts 'Criando livros...'
livro1 = Livro.create(titulo: 'Harry Potter e a Ordem da Fenix', editora: 'Rocco', num_exemplares: 5, isbn: '123456789', ano: 2020)
livro2 = Livro.create(titulo: 'Jogos Vorazes', editora: 'Rocco', num_exemplares: 3, isbn: '987654321', ano: 2019)
livro3 = Livro.create(titulo: "A Casa Negra", editora: "Suma", num_exemplares: 2, isbn: "8581050336", ano: 2013)
puts "Livro 1: #{livro1.titulo} " 
puts "Livro 2: #{livro2.titulo}"
puts "Livro 3: #{livro3.titulo}"
puts 'Livros criados!'
puts ''
puts 'Criando autores...'
# Autores
autor1 = Autor.create(nome: 'J.K. Rowling', nascimento: '1965-07-31', pais: 'Reino Unido')
autor2 = Autor.create(nome: 'Suzanne Collins', nascimento: '1962-08-10', pais: 'EUA')
autor3 = Autor.create(nome: 'Stephen King', nascimento: '1947-09-21', pais: 'EUA')
autor4 = Autor.create(nome: 'Peter Straub', nascimento: '1943-03-02', pais: 'EUA')
puts "A #{autor1.nome} nasceu em #{autor1.nascimento} e é do #{autor1.pais}"
puts "A #{autor2.nome} nasceu em #{autor2.nascimento} e é do #{autor2.pais}"
puts "O #{autor3.nome} nasceu em #{autor3.nascimento} e é do #{autor3.pais}"
puts "O #{autor4.nome} nasceu em #{autor4.nascimento} e é do #{autor4.pais}"
puts 'Autores criados!'
puts ''
puts 'Criando relacionamentos...'
# Relacionomento Livro-Autor
livro1.autores << autor1
livro2.autores << autor1
livro3.autores << autor3
livro3.autores << autor4
puts "O livro #{livro1.titulo} foi escrito por #{livro1.autores.map(&:nome).join(', ')}"
puts "O livro #{livro2.titulo} foi escrito por #{livro1.autores.map(&:nome).join(', ')}"
puts "O livro #{livro3.titulo} foi escrito por #{livro1.autores.map(&:nome).join(', ')}"
puts 'Relacionamentos criados!'
puts ''
puts 'Criando clientes...'
# Clientes
cliente1 = Cliente.create(nome: 'Doug', endereco: 'Rua A, 123', telefone: '123456789')
cliente2 = Cliente.create(nome: 'Netto', endereco: 'Rua B, 456', telefone: '987654321')
puts "O #{cliente1.nome} mora na #{cliente1.endereco} e seu telefone é #{cliente1.telefone}"
puts "O #{cliente2.nome} mora na #{cliente2.endereco} e seu telefone é #{cliente2.telefone}"
puts 'Clientes criados!'
puts ''
puts 'Criando empréstimos...'
# Empréstimos
emprestimo1 = Emprestimo.create(livro: livro1, cliente: cliente1, emprestimo: '2023-07-28', devolucao: '2023-08-10')
emprestimo2 = Emprestimo.create(livro: livro2, cliente: cliente2, emprestimo: '2023-07-25', devolucao: '2023-08-05')
puts "O #{emprestimo1.livro.titulo} foi emprestado para #{emprestimo1.cliente.nome} em #{emprestimo1.emprestimo} e deve ser devolvido até #{emprestimo1.devolucao}"
puts "O #{emprestimo2.livro.titulo} foi emprestado para #{emprestimo2.cliente.nome} em #{emprestimo2.emprestimo} e deve ser devolvido até #{emprestimo2.devolucao}"
puts 'Empréstimos criados!'
puts ''
