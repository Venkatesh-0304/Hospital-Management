class Doctor < ApplicationRecord
  belongs_to :hospital
  has_one :doctor_profile
end
