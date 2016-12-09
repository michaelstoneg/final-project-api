class AddItemsToDisplays < ActiveRecord::Migration[5.0]
  def change
    add_reference :displays, :items, foreign_key: true
  end
end
