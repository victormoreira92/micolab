class RenameStatusFromStatusAmostra < ActiveRecord::Migration[7.0]
  def change
    rename_column :status_amostra, :status, :situacao
  end
end
