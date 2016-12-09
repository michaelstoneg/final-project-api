class RemoveDisplayIdsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :displays_id
    remove_column :users, :items_id
    remove_column :displays, :ar
    remove_column :items, :displays_id
  end
end
