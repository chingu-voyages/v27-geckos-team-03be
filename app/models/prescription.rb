class Prescription < ApplicationRecord
  belongs_to :medication
  belongs_to :user
  has_many :dosages, dependent: :delete_all 
end
