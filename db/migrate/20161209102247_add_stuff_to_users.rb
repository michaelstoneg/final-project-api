class AddStuffToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :image, :string
    add_column :users, :gender, :string
    add_column :users, :Dob, :date
    add_column :users, :location, :string
    add_column :users, :interests, :string
    add_column :users, :about, :text
    add_reference :users, :displays, foreign_key: true
    add_reference :users, :items, foreign_key: true
  end
end
