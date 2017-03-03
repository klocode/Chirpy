class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :photo_url, :following

  def following
      current_user.follows?(object) if current_user
  end

end
