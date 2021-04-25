puts 'Creating 10 fake restaurants...'
if Rails.env.development?
  Restaurant.destroy_all
end
10.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  restaurant.save!
end
puts 'Finished!'
