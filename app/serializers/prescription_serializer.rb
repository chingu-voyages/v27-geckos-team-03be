class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :tier, :frequency, :expiration_date
  has_one :medication
  has_one :user
end
