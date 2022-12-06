class MovieSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :movie_url
end
