class CreateJoinTableLivroAutor < ActiveRecord::Migration[7.0]
  def change
    create_join_table :livros, :autores do |t|
      # t.index [:livro_id, :autor_id]
      # t.index [:autor_id, :livro_id]
    end
  end
end