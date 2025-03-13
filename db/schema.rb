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

ActiveRecord::Schema[7.0].define(version: 2025_03_13_183604) do
  create_table "amostras", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "numero_amostra"
    t.datetime "data_coleta"
    t.string "tipo_amostra"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "status_amostra_id", null: false
    t.bigint "material_biologico_id", null: false
    t.bigint "requisicao_id", null: false
    t.index ["material_biologico_id"], name: "index_amostras_on_material_biologico_id"
    t.index ["requisicao_id"], name: "index_amostras_on_requisicao_id"
    t.index ["status_amostra_id"], name: "index_amostras_on_status_amostra_id"
  end

  create_table "amostras_exames", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "amostra_id", null: false
    t.bigint "exame_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["amostra_id"], name: "index_amostras_exames_on_amostra_id"
    t.index ["exame_id"], name: "index_amostras_exames_on_exame_id"
  end

  create_table "exames", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome_exame"
    t.string "codigo"
    t.integer "metodologia"
    t.text "descricao"
    t.integer "prazo_liberacao"
    t.date "data_realizacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informacoes_clinicas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "data_inicio_sintomas"
    t.integer "idade_gestacional"
    t.integer "suspeita_diagnostica"
    t.boolean "lesao_pulmonar"
    t.integer "tipo_lesao_pulmonar"
    t.integer "localizacao_lesao_pulmonar"
    t.integer "fatores_associados"
    t.boolean "uso_antifungicos"
    t.integer "tipo_antifungico"
    t.integer "tipo_atividade_risco"
    t.string "numero_prontuario"
    t.string "ocupacao"
    t.integer "caso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "atividade_risco"
    t.bigint "requisicao_id", null: false
    t.index ["requisicao_id"], name: "index_informacoes_clinicas_on_requisicao_id"
  end

  create_table "informacoes_domiciliares", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "municipio_paciente"
    t.string "logradouro_paciente"
    t.string "cep_paciente"
    t.string "bairro_paciente"
    t.string "estado_paciente"
    t.integer "zona"
    t.string "pais_paciente"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "paciente_id", null: false
    t.index ["paciente_id"], name: "index_informacoes_domiciliares_on_paciente_id"
  end

  create_table "materiais_biologicos", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome_material_biologico"
    t.string "sigla"
    t.integer "tipo_material_biologico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "meios_culturas", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome_meio_cultura"
    t.date "validade_meio_cultura"
    t.string "descricao_meio_cultura"
    t.integer "tipo_meio_cultura"
    t.string "fabricante_meio_cultura"
    t.string "lote_meio_cultura"
    t.string "quantidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome_paciente"
    t.string "nome_mae"
    t.string "cpf_paciente"
    t.datetime "data_nascimento"
    t.integer "sexo"
    t.integer "etnia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "idade"
    t.integer "tipo_idade"
  end

  create_table "pacientes_unidades_saudes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "unidade_saude_id", null: false
    t.bigint "paciente_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_pacientes_unidades_saudes_on_paciente_id"
    t.index ["unidade_saude_id"], name: "index_pacientes_unidades_saudes_on_unidade_saude_id"
  end

  create_table "requisicoes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "numero_requisicao"
    t.bigint "paciente_id", null: false
    t.integer "status_requisicao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_requisicoes_on_paciente_id"
  end

  create_table "status_amostra", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "descricao"
    t.integer "situacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_exames", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "etapa"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "status_resultados", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "etapa"
    t.string "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "unidades_saudes", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "nome", null: false
    t.string "cnes"
    t.string "email_unidade_saude"
    t.string "telefone", null: false
    t.string "endereco"
    t.string "cep", null: false
    t.string "complemento"
    t.string "cidade"
    t.string "estado"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "nome", default: "", null: false
    t.string "registro"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "perfil"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "amostras", "materiais_biologicos"
  add_foreign_key "amostras", "requisicoes"
  add_foreign_key "amostras", "status_amostra"
  add_foreign_key "amostras_exames", "amostras"
  add_foreign_key "amostras_exames", "exames"
  add_foreign_key "informacoes_clinicas", "requisicoes"
  add_foreign_key "informacoes_domiciliares", "pacientes"
  add_foreign_key "pacientes_unidades_saudes", "pacientes"
  add_foreign_key "pacientes_unidades_saudes", "unidades_saudes"
  add_foreign_key "requisicoes", "pacientes"
end
