class AddMenuToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :menu_id, :integer
  end
end
