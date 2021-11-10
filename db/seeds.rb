puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St', phone_number: '0613653334', category: 'chinese' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St', phone_number: '0613653335', category: 'italian' }
frite_jaune = { name: 'Frite Jaune', address: '20 rue des capucins', phone_number: '0613653336', category: 'japanese' }
frite_bleu = { name: 'Frite Bleu', address: '21 rue des capucins', phone_number: '0613653337', category: 'french' }
pas_de_nom = { name: 'Pas De Nom', address: '28 rue des capucins', phone_number: '0613653338', category: 'belgian' }

[dishoom, pizza_east, frite_jaune, frite_bleu, pas_de_nom].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished!'
