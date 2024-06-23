class CreateUnidadePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :unidade_pacientes do |t|
      t.references :unidade_saudes, null: false, foreign_key: true
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
