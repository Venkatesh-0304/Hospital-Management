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
end
