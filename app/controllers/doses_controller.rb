class DosesController < ApplicationController
  before_action :set_dose, only: [:destroy, :create, :new]

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
  end

  def new
    @dose = Dose.new
  end

  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description)
  end

end
