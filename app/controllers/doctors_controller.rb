class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def show
  end

  def edit
  end

  def create
    @doctor = Doctor.new(doctors_params)

    if @dcotor.save
      redirect_to doctors_path, notice: "Doctor created successfully"
    else
      render :new, status: :unprocessable_entity
    end
  end
  def update
    if @doctor.update(set_doctor_params)
      params.require(:doctor).permit(:name, :specialization)
    else
      render :edit, status: :unprocessabel_entity
    end
  end

  def destroy
    @doctory.destroy
    redirect_to doctors_path, notice: "Doctor deleted successfully"
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def set_doctor_params
    params.require(:doctor).permit(:name, :specialization)
  end
end
