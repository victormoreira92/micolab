class CreateStatusExames < ActiveRecord::Migration[7.0]
  def change
    create_table :status_exames do |t|
      t.integer :etapa
      t.string :descricao

      t.timestamps
    end
  end
end
