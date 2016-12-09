class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :"link/context", :description
  has_one :users
  has_one :displays
end
