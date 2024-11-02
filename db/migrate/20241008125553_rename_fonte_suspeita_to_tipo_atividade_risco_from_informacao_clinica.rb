class RenameFonteSuspeitaToTipoAtividadeRiscoFromInformacaoClinica < ActiveRecord::Migration[7.0]
  def change
    rename_column :informacoes_clinicas, :fonte_suspeita, :tipo_atividade_risco
  end
end
