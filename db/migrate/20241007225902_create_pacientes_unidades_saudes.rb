class CreatePacientesUnidadesSaudes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes_unidades_saudes do |t|
      t.references :unidade_saude, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
