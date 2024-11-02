class ChangeColumnPaciente < ActiveRecord::Migration[7.0]
  def change
    change_column :pacientes, :sexo, :integer
  end
end
