# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'

home_made = { name: 'Home Made',
              address: '42 Rue de Londres, 59420 Mouvaux',
              phone_number: '09 50 10 08 09',
              category: 'belgian' }
le_r = { name: 'Le R',
         address: '80 Boulevard de la République, 59100 Roubaix',
         phone_number: '03 20 70 46 56',
         category: 'french' }
dolce_ristorante = { name: 'Dolce Ristorante',
                     address: '9 Rue Franklin Roosevelt, 59420 Mouvaux',
                     phone_number: '03 20 24 35 65',
                     category: 'italian' }
tsing_tao = { name: 'Tsing Tao',
              address: '13 Rue Jules Guesde, 59000 Lille',
              phone_number: '03 20 54 49 83',
              category: 'chinese' }
chiyoda = { name: 'Chiyoda',
            address: '24 Rue du Professeur Perrin, 59170 Croix',
            phone_number: '03 20 98 88 87',
            category: 'japanese' }

[home_made, le_r, dolce_ristorante, tsing_tao, chiyoda].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
