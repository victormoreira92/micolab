class CreateAmostrasExames < ActiveRecord::Migration[7.0]
  def change
    create_table :amostras_exames do |t|
      t.references :amostra, null: false, foreign_key: true
      t.references :exame, null: false, foreign_key: true

      t.timestamps
    end
  end
end
