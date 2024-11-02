class CreateAmostras < ActiveRecord::Migration[7.0]
  def change
    create_table :amostras do |t|
      t.string :numero_amostra
      t.datetime :data_coleta
      t.string :tipo_amostra

      t.timestamps
    end
  end
end
