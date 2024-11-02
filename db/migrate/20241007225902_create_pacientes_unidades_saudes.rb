class CreatePacientesUnidadesSaudes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes_unidades_saudes do |t|
      t.references :unidades_saudes, null: false, foreign_key: true
      t.references :pacientes, null: false, foreign_key: true

      t.timestamps
    end
  end
end
