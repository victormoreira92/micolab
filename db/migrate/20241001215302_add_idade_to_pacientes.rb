class AddIdadeToPacientes < ActiveRecord::Migration[7.0]
  def change
    add_column :pacientes, :idade, :integer
  end
end
