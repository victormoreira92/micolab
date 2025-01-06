class CreateRequisicoes < ActiveRecord::Migration[7.0]
  def change
    create_table :requisicoes do |t|
      t.string :numero_requisicao
      t.references :paciente, null: false, foreign_key: true
      t.integer :status_requisicao

      t.timestamps
    end
  end
end
