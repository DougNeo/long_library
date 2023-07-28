class Livro < ApplicationRecord
  has_and_belongs_to_many :autores
  has_many :emprestimos
end