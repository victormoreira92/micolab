class CreateExames < ActiveRecord::Migration[7.0]
  def change
    create_table :exames do |t|
      t.string :nome_exame
      t.string :codigo
      t.integer :metodologia
      t.string :descricao
      t.integer :prazo_liberacao
      t.date :data_realizacao

      t.timestamps
    end
  end
end
