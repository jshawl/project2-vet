class AppointmentsController < ApplicationController

  def new
  end

  def create
    @vet = Vet.find(params[:vet_id])
    @appointment = @vet.appointments.create!(appointment_params)

    redirect_to @vet
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  private
  def appointment_params
    params.require(:appointment).permit(:appointmenttime, :vet_id, :pet_id)
  end
end
