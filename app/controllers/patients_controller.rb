class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def show
  end

  def edit
  end

  def create
    @patient = Patient.new(patients_params)

    if @patient.save
      redirect_to patients_path, notice: "Patient added successfullt"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @patient.update(patients_params)
      redirect_to patients_path, notice: "Patient updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @patient.destroy

    redirect_to patients_path, notice: "Patient deleted successfully"
  end

  private

  def patients_params
    params.require(:patient).permit(:name, :age, :gender)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
