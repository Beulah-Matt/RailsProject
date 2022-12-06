class MovieCollection < ApplicationRecord
    #Attaching rlship to Movie collection
    belongs_to: users
    belongs_to: movies
end
