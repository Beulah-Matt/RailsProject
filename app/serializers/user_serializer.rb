class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :picture_url
end
