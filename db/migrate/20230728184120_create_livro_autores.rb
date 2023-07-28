class CreateLivroAutores < ActiveRecord::Migration[7.0]
  def change
    create_table :livro_autores do |t|
      t.references :livro, null: false, foreign_key: true
      t.references :autor, null: false, foreign_key: true

      t.timestamps
    end
  end
end