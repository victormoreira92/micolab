class CreateMaterialBiologicos < ActiveRecord::Migration[7.0]
  def change
    create_table :material_biologicos do |t|
      t.string :nome
      t.integer :tipo
      t.string :codigo

      t.timestamps
    end
  end
end
