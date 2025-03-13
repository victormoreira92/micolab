class RemoveStatusExameFromExame < ActiveRecord::Migration[7.0]
  def change
    remove_column :exames, :status_exame_id, :integer
  end
end
