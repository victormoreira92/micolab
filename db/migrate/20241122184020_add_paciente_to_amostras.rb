class AddPacienteToAmostras < ActiveRecord::Migration[7.0]
  def change
    add_reference :amostras, :paciente, null: false, foreign_key: true
  end
end
