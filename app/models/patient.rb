class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  has_and_belongs_to_many :medicines
end
