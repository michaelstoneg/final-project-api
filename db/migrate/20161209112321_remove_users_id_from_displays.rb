class RemoveUsersIdFromDisplays < ActiveRecord::Migration[5.0]
  def change
    remove_column :displays, :users_id
    remove_column :items, :users_id
  end
end
