class User < ApplicationRecord
    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :email, uniqueness: true

    #Attaching rlship to User
    has_many :movie_collections
    has_many :movies, through: :movie_collections

end
