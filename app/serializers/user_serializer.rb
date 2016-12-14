class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :displays_length, :about, :interests, :image, :location, :items
  has_many :items
  has_many :displays

  def displays_length
    object.displays.length
  end
end
