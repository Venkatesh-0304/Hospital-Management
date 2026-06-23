class Doctor < ApplicationRecord
  has_and_belongs_to_many :hospitals
  has_one :doctor_profile
  has_many :appointments, dependent: :destroy
  has_many :patients, through: :appointments

  before_destroy :log_destroy

  private
  def log_destroy
    puts "Printing Before destory"
  end
end
