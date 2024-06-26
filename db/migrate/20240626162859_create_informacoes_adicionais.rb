class CreateInformacoesAdicionais < ActiveRecord::Migration[7.0]
  def change
    create_table :informacoes_adicionais do |t|
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :cep
      t.string :bairro
      t.string :uf
      t.string :pais
      t.string :cidade
      t.string :pais
      t.references :paciente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
