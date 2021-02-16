class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :password, :phone, :profile_pic, :partners, :patients
end
