class AddMaterialBiologicoToAmostras < ActiveRecord::Migration[7.0]
  def change
    add_reference :amostras, :material_biologico, null: false, unique: true, foreign_key: true
  end
end
