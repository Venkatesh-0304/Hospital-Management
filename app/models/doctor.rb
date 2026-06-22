class Doctor < ApplicationRecord
  has_and_belongs_to_many :hospital
  has_one :doctor_profile
  has_many :appointments
  has_many :patients, through: :appointments
end
