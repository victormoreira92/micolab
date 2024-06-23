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

ActiveRecord::Schema[7.0].define(version: 2024_06_23_143329) do
  create_table "amostras", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "numero_interno"
    t.integer "tipo_material"
    t.datetime "data_coleta"
    t.datetime "data_processamento"
    t.datetime "data_recebimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "status_amostra_id", null: false
    t.bigint "paciente_id", null: false
    t.index ["paciente_id"], name: "index_amostras_on_paciente_id"
    t.index ["status_amostra_id"], name: "index_amostras_on_status_amostra_id"
  end

  create_table "pacientes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome"
    t.string "cns"
    t.string "cpf"
    t.datetime "data_nascimento"
    t.string "sexo"
    t.integer "etnia"
    t.string "nome_mae"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_amostras", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "situacao"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unidade_pacientes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "unidade_saudes_id", null: false
    t.bigint "paciente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_unidade_pacientes_on_paciente_id"
    t.index ["unidade_saudes_id"], name: "index_unidade_pacientes_on_unidade_saudes_id"
  end

  create_table "unidade_saudes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome"
    t.string "cnes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "last_sign_in_at"
    t.string "nome", default: "", null: false
    t.string "registro"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "perfil"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "amostras", "pacientes"
  add_foreign_key "amostras", "status_amostras"
  add_foreign_key "unidade_pacientes", "pacientes"
  add_foreign_key "unidade_pacientes", "unidade_saudes", column: "unidade_saudes_id"
end
