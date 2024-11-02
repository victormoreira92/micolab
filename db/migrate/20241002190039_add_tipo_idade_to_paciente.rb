class AddTipoIdadeToPaciente < ActiveRecord::Migration[7.0]
  def change
    add_column :pacientes, :tipo_idade, :integer
  end
end
