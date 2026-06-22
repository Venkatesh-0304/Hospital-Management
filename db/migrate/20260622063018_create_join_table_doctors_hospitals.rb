class CreateJoinTableDoctorsHospitals < ActiveRecord::Migration[8.1]
  def change
    create_join_table :doctors, :hospitals do |t|
      # t.index [:doctor_id, :hospital_id]
      # t.index [:hospital_id, :doctor_id]
    end
  end
end
