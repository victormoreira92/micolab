class RemovePacienteIdFromInformacaoClinica < ActiveRecord::Migration[7.0]
  def change
    remove_column :informacoes_clinicas, :paciente_id, :integer
  end
end
