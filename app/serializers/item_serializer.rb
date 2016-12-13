class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :link_context, :description, :display_ids
  has_one :user
  has_many :displays
end
