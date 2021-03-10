class User < ApplicationRecord
    # AccountabilityPartner Model to User Associations
    has_many :acc_partners, foreign_key: :patient_id, class_name: 'AccountabilityPartner', dependent: :destroy
    has_many :partners, through: :acc_partners, dependent: :destroy
    has_many :acc_patients, foreign_key: :partner_id, class_name: "AccountabilityPartner", dependent: :destroy
    has_many :patients, through: :acc_patients, dependent: :destroy
    # AccountabilityPartner Model to User Associations
    has_many :prescriptions, dependent: :destroy
    has_many :medications, through: :prescriptions, dependent: :destroy
    #dosages
    # has_many :dosages, through: :prescriptions
    #Validations 
    validates :name,:username, :email, :phone, :password,presence: true
    validates :email, :username, uniqueness: {case_sensitive: false}
    # validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
