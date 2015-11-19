class PetsController < ApplicationController


  def index
    authenticate_user!
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.create!(pet_params)

    if @pet.save
      redirect_to @pet
    else
      render 'new'
    end
  end

  def edit
    @pet =Pet.find(params[:id])
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    if @pet.update(pet_params)
      flash[:notice] = "#{@pet.name} was successfully updated."
      redirect_to @pet
    else
      render :edit
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy

    @pets = Pet.all
    redirect_to pets_path
  end


private
  def pet_params
    params.require(:pet).permit(:name, :breed, :gender, :dob)
  end

end
