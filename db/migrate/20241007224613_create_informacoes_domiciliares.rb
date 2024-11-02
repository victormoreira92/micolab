class CreateInformacoesDomiciliares < ActiveRecord::Migration[7.0]
  def change
    create_table :informacoes_domiciliares do |t|
      t.string :municipio_paciente
      t.string :logradouro_paciente
      t.string :cep_paciente
      t.string :bairro_paciente
      t.string :estado_paciente
      t.integer :zona
      t.string :pais_paciente

      t.timestamps
    end
  end
end
