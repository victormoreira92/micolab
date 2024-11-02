class AddPacienteToInformacoesDomiciliares < ActiveRecord::Migration[7.0]
  def change
    add_reference :informacoes_domiciliares, :paciente, null: false, foreign_key: true
  end
end
