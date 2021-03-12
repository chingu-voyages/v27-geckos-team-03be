class MedicationSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :fda_number
end
