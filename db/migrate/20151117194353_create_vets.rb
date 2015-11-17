class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :name
      t.string :school

      t.timestamps null: false
    end
  end
end
