class CreateDisplays < ActiveRecord::Migration[5.0]
  def change
    create_table :displays do |t|
      t.string :name
      t.string :theme
      t.references :users, foreign_key: true
      t.boolean :public
      t.boolean :archived
      t.integer :likes
      t.integer :size
      t.string :layout
      t.string :ar

      t.timestamps
    end
  end
end
