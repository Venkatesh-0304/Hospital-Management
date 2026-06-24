class Patient < ApplicationRecord
  has_many :appointments
  has_many :doctors, through: :appointments
  has_and_belongs_to_many :medicines
  validate :check_age
  validate :check_name

  private

  def check_age
    errors.add(:age, "must be greater than zero") if age<1
  end

  def check_name
    errors.add(:name, "cannot start with a number") if name =~ /^\d/
  end
end
