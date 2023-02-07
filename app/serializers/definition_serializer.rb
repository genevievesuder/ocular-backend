class DefinitionSerializer < ActiveModel::Serializer
  attributes :id, :term, :definition, :category, :like_count

  def like_count
    self.object.favorites.length
  end

end
