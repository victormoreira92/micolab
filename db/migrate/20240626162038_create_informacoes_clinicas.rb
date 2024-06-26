class CreateInformacoesClinicas < ActiveRecord::Migration[7.0]
  def change
    create_table :informacoes_clinicas do |t|
      t.datetime :data_sintomas
      t.integer :idade_gestacional
      t.integer :caso_agravo
      t.integer :etapa_tratamento
      t.integer :doenca
      t.references :paciente, null: false, foreign_key: true
      t.boolean :em_tratamento

      t.timestamps
    end
  end
end
