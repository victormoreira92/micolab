class CreateAmostras < ActiveRecord::Migration[7.0]
  def change
    create_table :amostras do |t|
      t.string :numero_interno
      t.integer :tipo_material
      t.datetime :data_coleta
      t.datetime :data_processamento
      t.datetime :data_recebimento

      t.timestamps
    end
  end
end
