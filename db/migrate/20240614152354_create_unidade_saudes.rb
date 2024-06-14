class CreateUnidadeSaudes < ActiveRecord::Migration[7.0]
  def change
    create_table :unidade_saudes do |t|
      t.string :nome
      t.string :cnes

      t.timestamps
    end
  end
end
