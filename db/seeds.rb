# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(
  id: 2,
  name: "Tony Stark",
  email: "ironman@example.com",
  password: "password",
  password_confirmation: "password"
)
user.save!

Hoody.create!([{
  title: "NYC Flagship Exclusive 10 Year Anniversary Foil Hoodie",
  brand: "Billionaire Boys Club",
  description: "Marked with the word “TIN,” which signify the custom of gift giving for 10-year wedding anniversaries.",
  size: "M",
  price: "299",
  image: Rails.root.join("app/assets/images/black_hoody.jpg").open,
  user_id: user.id
},
{
  title: "Green Crazy Camo College Bendy Logo Hoodie",
  brand: "A Bathing Ape",
  description: "Used/vintage effect is applied to this one intentionally to make it distressed.",
  size: "M",
  price: "400",
  image: Rails.root.join("app/assets/images/camo_hoody.jpg").open,
  user_id: user.id
},
{
  title: "Apee OG 1st Gen PONR Shark Hoodie",
  brand: "A Bathing Ape",
  description: "This is a very rare piece this is the first generation bape shark hoodie.",
  size: "Tall",
  price: "300",
  image: Rails.root.join("app/assets/images/green_hoody.jpg").open,
  user_id: user.id
},
{
  title: "Angry Ape Face Crewneck Sweater",
  brand: "A Bathing Ape",
  description: "Cream",
  size: "M",
  price: "175",
  image: Rails.root.join("app/assets/images/angry_face.jpg").open,
  user_id: user.id
},
{
  title: "OG Baby Milo Crewneck Sweater",
  brand: "A Bathing Ape",
  description: "Black",
  size: "M",
  price: "150",
  image: Rails.root.join("app/assets/images/baby_milo.jpg").open,
  user_id: user.id
},
{
  title: "Planet of The Apes Crewneck Sweater",
  brand: "A Bathing Ape",
  description: "Black",
  size: "M",
  price: "200",
  image: Rails.root.join("app/assets/images/planet.jpg").open,
  user_id: user.id
}])