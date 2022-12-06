User.destroy_all
Movie.destroy_all
MovieCollection.destroy_all

puts "🌱 Seeding spices..."

MovieCollection.create(user_id:1, movie_id:2)
MovieCollection.create(user_id:2, movie_id:1)
MovieCollection.create(user_id:3, movie_id:3)




Movie.create(name: "Braveheart", description:"William Wallace, a Scottish rebel, along with his clan, sets out to battle King Edward I of England, who killed his bride a day after their marriage.", movie_url: "https://m.media-amazon.com/images/I/51PvUkCVqOL._AC_.jpg", video_url: "https://www.youtube.com/watch?v=_QbWg0P5wy4&ab_channel=MelAshley")
Movie.create(name: "Toy Story", description:"Woody (Tom Hanks), a good-hearted cowboy doll who belongs to a young boy named Andy (John Morris), sees his position as Andy's favorite toy jeopardized ", movie_url: "https://m.media-amazon.com/images/I/71aBLaC4TzL._AC_SL1330_.jpg", video_url: "https://www.youtube.com/watch?v=VHUBHkPLzjs&ab_channel=PixelmaniaTV")
Movie.create(name: "Cars", description:"Cars is a CGI-animated film series and Disney media franchise set in a world populated by anthropomorphic vehicles created by John Lasseter.", movie_url: "https://m.media-amazon.com/images/I/811IcpNS05L._AC_SL1303_.jpg", video_url: "https://www.youtube.com/watch?v=OO2H-VoSO4E&ab_channel=MyMovieGames-JuegosDePelicula")
Movie.create(name: "Hot Rod",description:"Rod, a naif, slacker lives with his mother, brother and stepfather whose respect he craves. When his stepfather needs an operation, to raise funds, he plans to set a school-bus-jumping record", movie_url: "https://i.ebayimg.com/images/g/W3sAAOSweclhf5c4/s-l400.jpg", video_url: "https://www.youtube.com/watch?v=yByhd7FAOug&ab_channel=RottenTomatoesClassicTrailers")
Movie.create(name: "The Unbearable Weight of Massive Talent", description: "TUnfulfilled and facing financial ruin, actor Nick Cage accepts a $1 million offer to attend a wealthy fan's birthday party. Things take a wildly unexpected turn when a CIA operative recruits Cage for an unusual mission.",  movie_url: "https://dx35vtwkllhj9.cloudfront.net/lionsgateus/unbearable-weight-of-massive-talent/images/regions/us/onesheet.jpg", video_url: "https://www.youtube.com/watch?v=x2YHPZMj8r4&ab_channel=LionsgateMovies")
Movie.create(name: "I'm In Love With A Church Girl", description: "TUnfulfilled and facing financial ruin, actor Nick Cage accepts a $1 million offer to attend a wealthy fan's birthday party. Things take a wildly unexpected turn when a CIA operative recruits Cage for an unusual mission.", movie_url: "https://upload.wikimedia.org/wikipedia/en/3/3e/Wedding_crashers_poster.jpg", video_url: "https://www.youtube.com/watch?v=UI5FO2Y-sPk&ab_channel=ACIOnTheGo")

User.create(name:Faker::Name.name, email:"abc@gmail.com", password_digest:"happy", watch_list:Faker::Movie.quote , picture_url:"https://m.media-amazon.com/images/I/51UM0NLMlVL._AC_.jpg")



puts "✅ Done seeding!"