class LivroAutores < ApplicationRecord
  belongs_to :livro
  belongs_to :autor
end