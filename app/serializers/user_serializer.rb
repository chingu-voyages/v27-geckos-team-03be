class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :email, :phone, :profile_pic, :partners, :patients
end
