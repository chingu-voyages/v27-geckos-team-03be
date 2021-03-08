class Prescription < ApplicationRecord
  belongs_to :medication, :dependent => :destroy
  belongs_to :user
  has_many :dosages, :dependent => :destroy 
end
