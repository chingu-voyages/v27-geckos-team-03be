class UserSerializer < ActiveModel::Serializer
  attributes :name, :username, :email, :phone, :profile_pic, :partners, :patients
  has_many :medications
  has_many :prescriptions

end
