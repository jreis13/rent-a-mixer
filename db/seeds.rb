# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Service.delete_all
User.delete_all
puts 'Destroyed DB'
avatar1 = URI.open('https://photos.smugmug.com/photos/i-86cmLwG/0/XL/i-86cmLwG-XL.jpg')
joao = User.create(email: 'joao@gmail.com', first_name: 'Joao', last_name: 'Reis', address: 'Lisbon', password: '123456')
joao.photo.attach(io: avatar1, filename: 'avatar1.png', content_type: 'image/png')

avatar2 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-VBwKbFF/1/7f98968c/XL/211105%20Le%20Wagon%20mug%20shots_144-XL.jpg')
david = User.create(email: 'david@gmail.com', first_name: 'David', last_name: 'Carmo', address: 'Lisbon', password: '123456')
david.photo.attach(io: avatar2, filename: 'avatar2.png', content_type: 'image/png')

banner1 = URI.open('https://res.cloudinary.com/drjmsp9it/image/upload/c_fill,h_300/v1/development/gtrwxj57tu84gjvet5ko18i4x7ii')
service3 = Service.create(name: 'Joao', price: '120', description: 'Bleh, bleh, bleh', user_id: joao.id)
service3.photo.attach(io: banner1, filename: 'nes.png', content_type: 'image/png')

banner2 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV_ffY9MwW-pIpfm6dc9EbPv-xapUkpR13FA&usqp=CAU')
service1 = Service.create(name: 'David', price: '100', description: 'Blah, blah, blah', user_id: david.id)
service1.photo.attach(io: banner2, filename: 'service_photo4.png', content_type: 'image/png')

banner3 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTMLPgdiDJl5YXQrrQj8oQ-wCd6LmwBvIXbwg&usqp=CAU')
service2 = Service.create(name: 'David', price: '150', description: 'Blah, blah, blah', user_id: david.id)
service2.photo.attach(io: banner3, filename: 'service_photo2.png', content_type: 'image/png')



puts 'created DB'
