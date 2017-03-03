class UserExtendedSerializer < ActiveModel::Serializer
  attributes :id, :username, :token
end
