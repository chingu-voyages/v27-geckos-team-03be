class AccountabilityPartner < ApplicationRecord
    belongs_to :patient, class_name: 'User'
    belongs_to :partner, class_name: 'User'

end
