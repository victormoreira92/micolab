class AddPacienteToInformacoesClinicas < ActiveRecord::Migration[7.0]
  def change
    add_reference :informacoes_clinicas, :paciente, null: false, foreign_key: true
  end
end
