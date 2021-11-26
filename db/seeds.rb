# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'Deleting DB...'

Service.delete_all
User.delete_all

puts 'DB successfully destroyed.'

puts 'Generating new DB...'

puts avatar1 = URI.open('https://photos.smugmug.com/photos/i-86cmLwG/0/XL/i-86cmLwG-XL.jpg')
joao = User.create(email: 'joao@gmail.com', first_name: 'Joao', last_name: 'Reis', address: 'Lisbon', password: '123456')
joao.photo.attach(io: avatar1, filename: 'avatar1.png', content_type: 'image/png')

puts "Created #{joao.photo.attached?}-"

puts avatar2 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-VBwKbFF/1/7f98968c/XL/211105%20Le%20Wagon%20mug%20shots_144-XL.jpg')
david = User.create(email: 'david@gmail.com', first_name: 'David', last_name: 'Carmo', address: 'Lisbon', password: '123456')
david.photo.attach(io: avatar2, filename: 'avatar2.png', content_type: 'image/png')

puts "Created #{david.photo.attached?}-"

puts avatar3 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-W3xT8h6/0/f2212de9/X2/211105%20Le%20Wagon%20mug%20shots_114-X2.jpg')
viktoriia = User.create(email: 'viktoriia@gmail.com', first_name: 'Viktoriia', last_name: 'Katyukova', address: 'Lisbon', password: '123456')
viktoriia.photo.attach(io: avatar3, filename: 'avatar3.png', content_type: 'image/png')

puts "Created #{viktoriia.photo.attached?}-"

puts avatar4 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-RXHgswq/0/fd84f90a/X2/211105%20Le%20Wagon%20mug%20shots_111-X2.jpg')
tiago = User.create(email: 'tiago@gmail.com', first_name: 'Tiago', last_name: 'Collot', address: 'Lisbon', password: '123456')
tiago.photo.attach(io: avatar4, filename: 'avatar4.png', content_type: 'image/png')

puts "Created #{tiago.photo.attached?}-"

puts avatar5 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-KKX28Dc/0/ffba78f5/X2/211105%20Le%20Wagon%20mug%20shots_137-X2.jpg')
andre = User.create(email: 'andre@gmail.com', first_name: 'Andre', last_name: 'Nascimento', address: 'Lisbon', password: '123456')
andre.photo.attach(io: avatar5, filename: 'avatar5.png', content_type: 'image/png')

puts "Created #{andre.photo.attached?}-"

puts avatar6 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-xFN8tCS/0/714086a2/X2/211105%20Le%20Wagon%20mug%20shots_103-X2.jpg')
james = User.create(email: 'james@gmail.com', first_name: 'James', last_name: 'Donck', address: 'Lisbon', password: '123456')
james.photo.attach(io: avatar6, filename: 'avatar6.png', content_type: 'image/png')

puts "Created #{james.photo.attached?}-"

puts avatar7 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-6tMCtC8/0/bec9b2c6/X2/211105%20Le%20Wagon%20mug%20shots_099-X2.jpg')
felix = User.create(email: 'felix@gmail.com', first_name: 'Felix', last_name: 'H.', address: 'Lisbon', password: '123456')
felix.photo.attach(io: avatar7, filename: 'avatar7.png', content_type: 'image/png')

puts "Created #{felix.photo.attached?}-"

puts avatar8 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-GZBGFpg/0/aaab6403/X2/211105%20Le%20Wagon%20mug%20shots_129-X2.jpg')
phillip = User.create(email: 'phillip@gmail.com', first_name: 'Phillip', last_name: 'S', address: 'Lisbon', password: '123456')
phillip.photo.attach(io: avatar8, filename: 'avatar8.png', content_type: 'image/png')

puts "Created #{phillip.photo.attached?}-"

puts avatar9 = URI.open('https://photos.smugmug.com/C/EMPRESAS/LeWagon/n-Pmb29k/211111/i-tX3Pmhr/0/5c80a763/X2/211105%20Le%20Wagon%20mug%20shots_126-X2.jpg')
mario = User.create(email: 'mario@gmail.com', first_name: 'Dr.', last_name: 'Mario', address: 'Lisbon', password: '123456')
mario.photo.attach(io: avatar9, filename: 'avatar9.png', content_type: 'image/png')

puts "Created #{mario.photo.attached?}-"

puts banner1 = URI.open('https://res.cloudinary.com/drjmsp9it/image/upload/v1637936435/development/hl5g9aaz52eo0i3hw6mx3it960cy.jpg')
service3 = Service.create(name: 'Joao', price: '120', description: 'Bleh, bleh, bleh', address: "Coimbra", user_id: joao.id)
service3.photo.attach(io: banner1, filename: 'nes.png', content_type: 'image/png')

puts "Created service -#{service3.photo.attached?}joao-"

puts banner2 = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQV_ffY9MwW-pIpfm6dc9EbPv-xapUkpR13FA&usqp=CAU')
service1 = Service.create(name: 'David', price: '100', description: 'My name is David and I am an expert mixologist.
What is a mixologist you ask?
A mixologist is a person who has studied the history of mixed drinks and cocktails. They often know the significance behind each ingredient in a drink and understand the impact of each mixing technique. Mixologists create new cocktail recipes by combining innovative ideas with traditional knowledge. While these professionals may work behind a bar and serve drinks to customers, a large portion of their work involves the design and creation of new cocktail recipes. Their other job duties include:
Creating a unique version of a traditional cocktail
Using untraditional bar tools to create innovative drinks
Combining ingredients to present new cocktail recipes
Staying knowledgeable about new cocktail trends
Collaborating with other mixologists to learn new techniques
Supervising bartenders
Developing extensive, personalized cocktail menus for a restaurant, event or bar
If you have a fun time, hire me!', address: "Lisboa", user_id: david.id)
service1.photo.attach(io: banner2, filename: 'service_photo4.png', content_type: 'image/png')

puts "Created service -#{service1.photo.attached?}david-"

puts banner3 = URI.open('https://craftybartending.com/wp-content/uploads/2017/10/Cocktail-Making-Techniques.jpg')
service4 = Service.create(name: 'Viktoriia', price: '150', description: 'Blah, blah, blah', address: "Lisboa", user_id: viktoriia.id)
service4.photo.attach(io: banner3, filename: 'service_photo2.png', content_type: 'image/png')

puts "Created service -#{service4.photo.attached?}viktoriia-"

puts banner4 = URI.open('https://craftybartending.com/wp-content/uploads/2018/04/Cocktails-Bartenders-Should-Know.jpg')
service5 = Service.create(name: 'Andre', price: '150', description: 'Blah, blah, blah', address: "Cascais", user_id: andre.id)
service5.photo.attach(io: banner4, filename: 'service_photo2.png', content_type: 'image/png')

puts "Created service -#{service5.photo.attached?}andre-"

puts banner5 = URI.open('https://cf.ltkcdn.net/cocktails/images/orig/232420-1600x1029-basic-drinks-know-before-you-try-bartending.jpg')
service6 = Service.create(name: 'Tiago', price: '150', description: 'Blah, blah, blah', address: "Carcavelos", user_id: tiago.id)
service6.photo.attach(io: banner5, filename: 'service_photo2.png', content_type: 'image/png')

puts "Created service -#{service6.photo.attached?}tiago-"

puts banner6 = URI.open('https://static.independent.co.uk/s3fs-public/thumbnails/image/2016/12/06/12/bartender-istock.jpg?width=982&height=726&auto=webp&quality=75')
service7 = Service.create(name: 'Felix', price: '250', description: 'Blah, blah, blah', address: "Berlin", user_id: felix.id)
service7.photo.attach(io: banner6, filename: 'service_photo2.png', content_type: 'image/png')

puts "Created service -#{service7.photo.attached?}felix-"

puts banner7 = URI.open('https://dg38gzoej82xh.cloudfront.net/sites/default/files/styles/image_gallery_xl/public/images/node/article/04-bartender-garnishing-cocktail.jpg?itok=fzcG6nP2')
service8 = Service.create(name: 'James', price: '350', description: 'Blah, blah, blah', address: "Brussels", user_id: james.id)
service8.photo.attach(io: banner7, filename: 'service_photo2.png', content_type: 'image/png')

puts "Created service -#{service8.photo.attached?}james-"

puts banner8 = URI.open('https://www.funktionevents.co.uk/images/pictures/new/uk/activities/hire-a-cocktail-bartender/hire-a-cocktail-bartender-(product-player).jpg?v=9ba2cb3d')
service9 = Service.create(name: 'Phillip', price: '170', description: 'Hi my name is Philipp Sommerfeld!
People mistakenly think that I’m a software developer, but I’m chattier than most of the coders you’ll meet. I talk, I listen, and I’m goddamn hilarious. I’m passionate about mixing drinks, interacting with customers, and serving them a drink they’ll never forget.
My specialties are mixing German beers with fun things like Coca Cola or Fanta. Yes, we Germans actually do that! :)
Make no mistake, I have personality and a soul. Its spirit can be sensed when taking your order. You converse with something that is almost supernatural, yet very real – a German with a sense of humor. I am the perfect bartender trained to deliver excellence. Especially when serving a drink precisely to your liking.', address: "Frankfurt", user_id: phillip.id)
service9.photo.attach(io: banner8, filename: 'service_photo2.png', content_type: 'image/png')

puts "Created service -#{service9.photo.attached?}phillip-"
puts banner9 = URI.open('https://c.stocksy.com/a/QtIC00/z9/2932564.jpg')
service10 = Service.create(name: 'Dr. Mario', price: '250', description: 'I used to be a doctor but now I am an excellent coder and bartender!', address: "Lisboa", user_id: mario.id)
service10.photo.attach(io: banner9, filename: 'service_photo2.png', content_type: 'image/png')

puts "Created service -#{service10.photo.attached?}mario-"

puts 'All set, DB successfully created!'
