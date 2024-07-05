class AddStatusAmostraToAmostras < ActiveRecord::Migration[7.0]
  def change
    add_reference :amostras, :status_amostra, null: false, foreign_key: true
  end
end
