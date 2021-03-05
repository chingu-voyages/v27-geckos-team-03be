class DosageSerializer < ActiveModel::Serializer
  attributes :id, :taken
  has_one :prescription
end
