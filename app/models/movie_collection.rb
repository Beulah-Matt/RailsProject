class MovieCollection < ApplicationRecord
    #Attaching rlship to Movie collection
    belongs_to :user
    belongs_to :movie
end
