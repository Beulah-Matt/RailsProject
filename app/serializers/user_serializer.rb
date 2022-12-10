class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :picture_url
end
