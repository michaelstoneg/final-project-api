class AddUsersToDisplays < ActiveRecord::Migration[5.0]
  def change
    add_reference :displays, :user, foreign_key: true
  end
end
