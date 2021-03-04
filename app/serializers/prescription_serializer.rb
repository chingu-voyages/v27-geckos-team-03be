class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :hours, :weekdays, :medication, :dosages

  has_one :medication
  has_one :user
  has_many :dosages
end
