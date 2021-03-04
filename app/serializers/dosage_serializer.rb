class DosageSerializer < ActiveModel::Serializer
  attributes :id, :taken, :prescription
  has_one :prescription
end
