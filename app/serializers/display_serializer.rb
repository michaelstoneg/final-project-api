class DisplaySerializer < ActiveModel::Serializer
  attributes :id, :name, :theme, :public, :archived, :likes, :size, :layout, :item_ids
  has_one :user
  has_many :items
end
