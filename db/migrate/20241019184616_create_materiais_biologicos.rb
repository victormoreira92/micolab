class CreateMateriaisBiologicos < ActiveRecord::Migration[7.0]
  def change
    create_table :materiais_biologicos do |t|
      t.string :nome_material_biologico
      t.string :sigla
      t.integer :tipo_material_biologico

      t.timestamps
    end
  end
end
