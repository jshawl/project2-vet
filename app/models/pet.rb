class Pet < ActiveRecord::Base
  has_many :appointments
  has_many :vets, through: :appointments
end
