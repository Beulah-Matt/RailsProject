User.destroy_all
# Movie.destroy_all
MovieCollection.destroy_all

puts "🌱 Seeding spices..."

MovieCollection.create(user_id:1, movie_id:2)
MovieCollection.create(user_id:2, movie_id:1)
MovieCollection.create(user_id:3, movie_id:3)




Movie.create(name: "Braveheart", description:"William Wallace, a Scottish rebel, along with his clan, sets out to battle King Edward I of England, who killed his bride a day after their marriage.", movie_url: "https://m.media-amazon.com/images/I/51PvUkCVqOL._AC_.jpg")
Movie.create(name: "Toy Story", description:"Woody (Tom Hanks), a good-hearted cowboy doll who belongs to a young boy named Andy (John Morris), sees his position as Andy's favorite toy jeopardized ", movie_url: "https://m.media-amazon.com/images/I/71aBLaC4TzL._AC_SL1330_.jpg")
Movie.create(name: "Cars", description:"Cars is a CGI-animated film series and Disney media franchise set in a world populated by anthropomorphic vehicles created by John Lasseter.", movie_url: "https://m.media-amazon.com/images/I/811IcpNS05L._AC_SL1303_.jpg")
Movie.create(name: "Hot Rod",description:"Rod, a naif, slacker lives with his mother, brother and stepfather whose respect he craves. When his stepfather needs an operation, to raise funds, he plans to set a school-bus-jumping record", movie_url: "https://i.ebayimg.com/images/g/W3sAAOSweclhf5c4/s-l400.jpg")

User.create(name:Faker::Name.name, email:"abc@gmail.com", password_digest:"happy", watch_list:Faker::Movie.quote , picture_url:"https://m.media-amazon.com/images/I/51UM0NLMlVL._AC_.jpg")



puts "✅ Done seeding!"