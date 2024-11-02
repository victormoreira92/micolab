class AddMaterialBiologicoToAmostras < ActiveRecord::Migration[7.0]
  def change
    add_reference :amostras, :material_biologico, null: false, foreign_key: { to_table: :materiais_biologicos }
  end
end
