class AddStatusExameToExame < ActiveRecord::Migration[7.0]
  def change
    add_reference :exames, :status_exame, null: false, foreign_key: true
  end
end
