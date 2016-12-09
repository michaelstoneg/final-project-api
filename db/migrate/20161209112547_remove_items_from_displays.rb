class RemoveItemsFromDisplays < ActiveRecord::Migration[5.0]
  def change
    remove_column :displays, :items_id
  end
end
