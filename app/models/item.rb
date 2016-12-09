class Item < ApplicationRecord
  belongs_to :users
  belongs_to :displays
end
