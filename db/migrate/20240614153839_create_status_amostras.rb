class CreateStatusAmostras < ActiveRecord::Migration[7.0]
  def change
    create_table :status_amostras do |t|
      t.integer :situacao
      t.string :descricao

      t.timestamps
    end
  end
end
