class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome_paciente
      t.string :nome_mae
      t.string :cpf_paciente
      t.datetime :data_nascimento
      t.string :sexo
      t.integer :etnia

      t.timestamps
    end
  end
end
