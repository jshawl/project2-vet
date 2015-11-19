class VetsController < ApplicationController

  
  def index
    authenticate_user!
    @vets = Vet.all
  end

  def new
    @vet = Vet.new
  end

  def edit
    @vet = Vet.find(params[:id])
  end

  def create
    @vet = Vet.create!(vet_params)

    if @vet.save
      redirect_to @vet
    else
      render 'new'
    end
  end

  def show
    @vet = Vet.find(params[:id])
    @pet = Pet.find_by(params[:pet_id])
    @appointment = Appointment.new
    # @pet = Pet.create!(params[:pet_id])

  end

  def update
    @vet = Vet.find(params[:id])
    if @vet.update(vet_params)
      flash[:notice] = "#{@vet.name} was successfully updated."
      redirect_to @vet
    else
      render :edit
    end
  end

  def destroy
    @vet = Vet.find(params[:id])
    @vet.destroy

    redirect_to vets_path
  end

private
  def vet_params
    params.require(:vet).permit(:name, :school)
  end

  def appointment_params
    params.require(:appointment).permit(:appointmenttime, :pet_id, :vet_id)
  end

end
