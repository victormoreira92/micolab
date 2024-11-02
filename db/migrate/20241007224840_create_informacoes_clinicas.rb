class CreateInformacoesClinicas < ActiveRecord::Migration[7.0]
  def change
    create_table :informacoes_clinicas do |t|
      t.datetime :data_inicio_sintomas
      t.integer :idade_gestacional
      t.integer :suspeita_diagnostica
      t.boolean :lesao_pulmonar
      t.integer :tipo_lesao_pulmonar
      t.integer :localizacao_lesao_pulmonar
      t.integer :fatores_associados
      t.boolean :uso_antifungicos
      t.integer :tipo_antifungico
      t.integer :fonte_suspeita
      t.string :numero_prontuario
      t.string :ocupacao
      t.integer :caso

      t.timestamps
    end
  end
end
