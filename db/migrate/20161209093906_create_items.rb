class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.string :link_context
      t.string :description
      t.references :users, foreign_key: true
      t.references :displays, foreign_key: true

      t.timestamps
    end
  end
end
