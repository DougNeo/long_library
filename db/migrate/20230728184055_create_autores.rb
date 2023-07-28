class CreateAutores < ActiveRecord::Migration[7.0]
  def change
    create_table :autores do |t|
      t.string :nome
      t.date :nascimento
      t.string :pais

      t.timestamps
    end
  end
end