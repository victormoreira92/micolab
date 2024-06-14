class CreatePacientes < ActiveRecord::Migration[7.0]
  def change
    create_table :pacientes do |t|
      t.string :nome
      t.string :cns
      t.string :cpf
      t.datetime :data_nascimento
      t.string :sexo
      t.integer :raca
      t.string :nome_mae

      t.timestamps
    end
  end
end
