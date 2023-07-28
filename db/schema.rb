# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_28_190523) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "autores", force: :cascade do |t|
    t.string "nome"
    t.date "nascimento"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "autores_livros", id: false, force: :cascade do |t|
    t.bigint "livro_id", null: false
    t.bigint "autor_id", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emprestimos", force: :cascade do |t|
    t.bigint "livro_id", null: false
    t.bigint "cliente_id", null: false
    t.date "emprestimo"
    t.date "devolucao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cliente_id"], name: "index_emprestimos_on_cliente_id"
    t.index ["livro_id"], name: "index_emprestimos_on_livro_id"
  end

  create_table "livro_autores", force: :cascade do |t|
    t.bigint "livro_id", null: false
    t.bigint "autor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["autor_id"], name: "index_livro_autores_on_autor_id"
    t.index ["livro_id"], name: "index_livro_autores_on_livro_id"
  end

  create_table "livros", force: :cascade do |t|
    t.string "titulo"
    t.string "editora"
    t.string "isbn"
    t.integer "ano"
    t.integer "num_exemplares"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "emprestimos", "clientes"
  add_foreign_key "emprestimos", "livros"
  add_foreign_key "livro_autores", "autores"
  add_foreign_key "livro_autores", "livros"
end