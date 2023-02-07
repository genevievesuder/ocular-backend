class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :education, :title, :field, :about, :posts
  has_many :favorites, serializer: FavoriteSerializer
end
