class User < ApplicationRecord
    has_secure_password
    #Attaching rlship to User
    has_many :movie_collections
    has_many :movies, through: :movie_collections

end
