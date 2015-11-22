class AppointmentsController < ApplicationController

  def new
  end

  def create
    @vet = Vet.find(params[:vet_id])
    @appointment = @vet.appointments.create!(appointment_params)
    # consider adding a user_id to appointment table so you can know who created an appointment

    redirect_to @vet
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  # in the future, consider adding edit / delete functionality as well
  # def destroy
  #   Appointment.find(params[:id]).destroy
  # end
  # also check out http://guides.rubyonrails.org/association_basics.html#options-for-belongs-to-dependent
  # as a bonus, restrict update/destroy to the person who created the appointment

  private
  def appointment_params
    params.require(:appointment).permit(:appointmenttime, :pet_id)
  end
end
