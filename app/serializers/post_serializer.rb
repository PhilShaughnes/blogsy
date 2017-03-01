class PostSerializer < ActiveModel::Serializer
  attributes :title, :username, :summary, :body, :comments_count

  def username
    object.user.username
  end
end
