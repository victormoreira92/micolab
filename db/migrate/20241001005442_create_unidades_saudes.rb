class CreateUnidadesSaudes < ActiveRecord::Migration[7.0]
  def change
    create_table :unidades_saudes do |t|
      t.string :nome, null:false
      t.string :cnes
      t.string :email_unidade_saude
      t.string :telefone, null:false
      t.string :endereco
      t.string :cep, null:false
      t.string :complemento
      t.string :cidade
      t.string :estado
      t.string :pais

      t.timestamps
    end
  end
end
