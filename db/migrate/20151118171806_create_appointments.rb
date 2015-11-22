class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :appointmenttime # recommend using datetime object here
      t.references :vet, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
