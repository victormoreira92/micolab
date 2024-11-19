class CreateStatusResultados < ActiveRecord::Migration[7.0]
  def change
    create_table :status_resultados do |t|
      t.integer :etapa
      t.string :descricao

      t.timestamps
    end
  end
end
