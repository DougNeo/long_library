class CreateLivros < ActiveRecord::Migration[7.0]
  def change
    create_table :livros do |t|
      t.string :titulo
      t.string :editora
      t.string :isbn
      t.integer :ano
      t.integer :num_exemplares

      t.timestamps
    end
  end
end