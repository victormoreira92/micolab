class CreateStatusAmostra < ActiveRecord::Migration[7.0]
  def change
    create_table :status_amostra do |t|
      t.string :descricao
      t.integer :status

      t.timestamps
    end
  end
end
