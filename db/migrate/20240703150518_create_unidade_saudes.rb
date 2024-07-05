class CreateUnidadeSaudes < ActiveRecord::Migration[7.0]
  def change
    create_table :unidade_saudes do |t|
      t.string :unidade_nome
      t.string :email
      t.string :telefone
      t.string :cep
      t.string :municipio
      t.string :unidade_federativa

      t.timestamps
    end
  end
end
