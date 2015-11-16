class PetsController < ApplicationController

  def index
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
  end


private
  def pet_params
    params.require(:pet).permit(:name, :breed, :gender, :dob)
  end

end
