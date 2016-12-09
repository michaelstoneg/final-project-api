class DisplaySerializer < ActiveModel::Serializer
  attributes :id, :name, :theme, :public, :archived, :likes, :size, :layout
  has_one :user
  has_many :items
end
