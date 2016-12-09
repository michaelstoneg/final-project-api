# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "displays"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([{
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
},{
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
}])

display1 = Display.create!(
  name: "test_archived_display",
  theme: "ennui",
  user_id: 1,
  public: false,
  archived: true,
  likes: 1,
  size: 30,
  layout: "grid"
)

display2 = Display.create!(
  name: "test_public_display",
  theme: "ennui exposed",
  user_id: 1,
  public: true,
  archived: false,
  likes: 1,
  size: 30,
  layout: "grid"
)

item1 = Item.create!(
  name: "test_item_1",
  image: "",
  link_context: "",
  description: "an item for testing",
  user_id: 1
)

display1.items << item1
display2.items << item1

# Item.create!([{
#   name: "test_item_1",
#   image: "",
#   link_context: "",
#   description: "an item for testing",
#   user_id: 1
# },{
#   name: "test_item_2",
#   image: "",
#   link_context: "",
#   description: "yet another item for testing",
#   user_id: 1
# },{
#   name: "test_item_3",
#   image: "",
#   link_context: "",
#   description: "this is getting out of hand now",
#   user_id: 1
#   }])
