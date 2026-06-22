class RenameColumnConsultaitonFeeToConsultationFee < ActiveRecord::Migration[8.1]
  def change
    rename_column :doctor_profiles, :consultaiton_fee, :consultation_fee
  end
end
