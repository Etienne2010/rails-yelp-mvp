# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  r = Restaurant.new(name: Faker::HarryPotter.character, address: Faker::Address.full_address, category: ["chinese", "italian", "japanese", "french", "belgian"].sample(1)[0])
  if (r.save)
    puts "saved, #{r.name}"
  else
    puts "not saved, #{r.errors}"
    puts "#{r.name}, #{r.address}, #{r.category}"
  end
end
