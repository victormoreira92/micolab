class AddRequisicaoToInformacoesClinicas < ActiveRecord::Migration[7.0]
  def change
    add_reference :informacoes_clinicas, :requisicao, null: false, foreign_key: true
  end
end
