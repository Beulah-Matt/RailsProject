class Movie < ApplicationRecord
    #Attaching rlship  in Movie
    has_many :movie_collections
    has_many :users, through: :movie_collections
end
