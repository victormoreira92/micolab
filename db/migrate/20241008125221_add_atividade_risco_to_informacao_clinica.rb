class AddAtividadeRiscoToInformacaoClinica < ActiveRecord::Migration[7.0]
  def change
    add_column :informacoes_clinicas, :atividade_risco, :boolean
  end
end
