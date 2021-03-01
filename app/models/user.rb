class User < ApplicationRecord
    # AccountabilityPartner Model to User Associations
    has_many :acc_partners, foreign_key: :patient_id, class_name: 'AccountabilityPartner'
    has_many :partners, through: :acc_partners
    has_many :acc_patients, foreign_key: :partner_id, class_name: "AccountabilityPartner"
    has_many :patients, through: :acc_patients
    # AccountabilityPartner Model to User Associations
    has_many :prescriptions, :dependent => :destroy
    has_many :medications, through: :prescriptions
    #Validations 
    validates :name,:username, :email, :phone, :password,presence: true
    validates :email, :username, uniqueness: {case_sensitive: false}
    # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
