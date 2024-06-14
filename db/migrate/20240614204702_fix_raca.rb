class FixRaca < ActiveRecord::Migration[7.0]
  def change
    rename_column :pacientes, :raca, :etnia
  end
end
