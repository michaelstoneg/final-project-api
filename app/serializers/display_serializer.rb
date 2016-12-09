class DisplaySerializer < ActiveModel::Serializer
  attributes :id, :name, :theme, :public, :archived, :likes, :size, :layout, :ar
  has_one :users
  has_one :items
end
