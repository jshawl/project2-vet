class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.string :breed
      t.string :gender
      t.string :dob
      t.timestamps null: false
    end
  end
end
