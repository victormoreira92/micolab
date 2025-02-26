class CreateMeiosCulturas < ActiveRecord::Migration[7.0]
  def change
    create_table :meios_culturas do |t|
      t.string :nome_meio_cultura
      t.date :validade_meio_cultura
      t.string :descricao_meio_cultura
      t.integer :tipo_meio_cultura
      t.string :fabricante_meio_cultura
      t.string :lote_meio_cultura
      t.string :quantidade

      t.timestamps
    end
  end
end
