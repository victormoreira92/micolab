class ChangeExameDescricaoType < ActiveRecord::Migration[7.0]
  def change
    change_column :exames, :descricao, :text
  end
end
