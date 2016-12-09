class CreateJoinTableDisplaysItems < ActiveRecord::Migration[5.0]
  def change
    create_join_table :displays, :items do |t|
      # t.index [:display_id, :item_id]
      # t.index [:item_id, :display_id]
    end
  end
end
