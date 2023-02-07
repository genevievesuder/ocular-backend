class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :image, :creator

  def creator
    self.object.user.username
  end

end
