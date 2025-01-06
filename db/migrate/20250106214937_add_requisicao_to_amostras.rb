class AddRequisicaoToAmostras < ActiveRecord::Migration[7.0]
  def change
    add_reference :amostras, :requisicao, null: false, foreign_key: true
  end
end
