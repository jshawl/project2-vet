class ChangeColumnInAppointments < ActiveRecord::Migration
  def change
    rename_column :appointments, :user_id, :vet_id
  end
end
