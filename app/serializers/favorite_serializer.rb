class FavoriteSerializer < ActiveModel::Serializer
  attributes :id
  #^^ can i remove this line
  belongs_to :definition, serializer: DefinitionSerializer
end
