class Dosage < ApplicationRecord
  belongs_to :prescription, dependent: :destroy
end
