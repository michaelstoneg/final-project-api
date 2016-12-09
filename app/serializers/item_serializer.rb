class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :link_context, :description
  has_one :user
  has_many :displays
end
