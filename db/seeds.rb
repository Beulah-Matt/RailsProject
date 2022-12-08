User.destroy_all
Movie.destroy_all
MovieCollection.destroy_all

puts "🌱 Seeding spices..."

movie1 = Movie.create(name: "Toy Story", description:"Woody (Tom Hanks), a good-hearted cowboy doll who belongs to a young boy named Andy (John Morris), sees his position as Andy's favorite toy jeopardized ", movie_url: "https://m.media-amazon.com/images/I/71aBLaC4TzL._AC_SL1330_.jpg", video_url: "https://www.youtube.com/watch?v=7__sKqLaTMc&ab_channel=THEFULLMOVIEVIDEOGAMETV")

movie2 = Movie.create(name: "Braveheart", description:"William Wallace, a Scottish rebel, along with his clan, sets out to battle King Edward I of England, who killed his bride a day after their marriage.", movie_url: "https://i.postimg.cc/fR2spQzN/braveheart.jpg", video_url: "https://www.youtube.com/watch?v=_QbWg0P5wy4&ab_channel=MelAshley" )

movie3 = Movie.create(name: "Cars", description:"Cars is a CGI-animated film series and Disney media franchise set in a world populated by anthropomorphic vehicles created by John Lasseter.", movie_url: "https://m.media-amazon.com/images/I/811IcpNS05L._AC_SL1303_.jpg", video_url: "https://www.youtube.com/watch?v=OO2H-VoSO4E&ab_channel=MyMovieGames-JuegosDePelicula")

movie4 = Movie.create(name: "Inception",description:"Cobb steals information from his targets by entering their dreams. Saito offers to wipe clean Cobb's criminal history as payment for performing an inception on his sick competitor's son.", movie_url: "https://i.postimg.cc/FHVzRHyX/inception.jpg", video_url: "https://www.youtube.com/watch?v=hkP29meGM7k&ab_channel=MoviegradzStudioz")

movie5 = Movie.create(name: "The Unbearable Weight of Massive Talent", description: "TUnfulfilled and facing financial ruin, actor Nick Cage accepts a $1 million offer to attend a wealthy fan's birthday party. Things take a wildly unexpected turn when a CIA operative recruits Cage for an unusual mission.",  movie_url: "https://i.postimg.cc/mDwt52rS/unbearableweight.png", video_url: "https://www.youtube.com/watch?v=x2YHPZMj8r4&ab_channel=LionsgateMovies")

movie6 = Movie.create(name: "I'm In Love With A Church Girl", description: "TUnfulfilled and facing financial ruin, actor Nick Cage accepts a $1 million offer to attend a wealthy fan's birthday party. Things take a wildly unexpected turn when a CIA operative recruits Cage for an unusual mission.", movie_url: "https://i.postimg.cc/2jhW4rm3/churchgirl.jpg", video_url: "https://www.youtube.com/watch?v=UI5FO2Y-sPk&ab_channel=ACIOnTheGo")

movie7 = Movie.create(name: "Joker", description: "Arthur Fleck, a party clown, leads an impoverished life with his ailing mother. However, when society shuns him and brands him as a freak, he decides to embrace the life of crime and chaos.", movie_url: "https://i.postimg.cc/QdcBLq4m/joker.jpg", video_url: "https://www.youtube.com/watch?v=UI5FO2Y-sPk&ab_channel=ACIOnTheGo")

movie8 = Movie.create(name: "Lion King", description: "As a cub, Simba is forced to leave the Pride Lands after his father Mufasa is murdered by his wicked uncle, Scar. Years later, he returns as a young lion to reclaim his throne.", movie_url: "https://i.postimg.cc/Ss2CZQN5/lionking.jpg", video_url: "https://www.youtube.com/watch?v=7TavVZMewpY&ab_channel=WaltDisneyStudios")

movie9 = Movie.create(name: "3000 Years of Longing", description: "While attending a conference in Istanbul, Dr. Alithea Binnie happens to encounter a djinn who offers her three wishes in exchange for his freedom. This presents two problems: first, she doubts that he's real, and second, because she's a scholar of story and mythology, she knows all the cautionary tales of wishes gone wrong. ", movie_url: "https://i.postimg.cc/13D9rkQH/yearsoflonging.jpg", video_url: "https://www.youtube.com/watch?v=TWGvntl9itE&ab_channel=MGM")

movie10 = Movie.create(name: "Ice Age II", description: "Manny, Sid and Diego discover that the ice dam protecting the valley they were residing in was about to fall and eventually lead to floods. Soon after, they scamper off to find a safer habitat.", movie_url: "https://i.postimg.cc/PfM2LQVR/ice-age-scaled.jpg", video_url: "https://www.youtube.com/watch?v=VUSAwCHuNLo&ab_channel=Longplays100")

user1 = User.create(username: "Althea", email: "abc@gmail.com", password: "happy", picture_url:"https://m.media-amazon.com/images/I/51UM0NLMlVL._AC_.jpg")
user2 = User.create(username: "Dmitri", email: "dmitiri@gmail.com", password: "hello", picture_url:"https://i.postimg.cc/rsBxrB14/avatar1.jpg")
user3 = User.create(username: "Peter", email: "peter@gmail.com", password: "4321", picture_url:"https://i.postimg.cc/GhRFJs6T/peter.png")

MovieCollection.create(user_id: user1.id, movie_id: movie4.id)
MovieCollection.create(user_id: user2.id, movie_id: movie2.id)
MovieCollection.create(user_id: user3.id, movie_id: movie10.id)


puts "✅ Done seeding!"