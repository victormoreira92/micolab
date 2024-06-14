class CreatePerfils < ActiveRecord::Migration[7.0]
  def change
    create_table :perfils do |t|
      t.integer :tipo
      t.string :descricao

      t.timestamps
    end
  end
end
