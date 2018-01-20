class CreateRentalDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :rental_details do |t|
      t.integer :number_of_beds
      t.decimal :weekly_rent
      t.decimal :term_weeks
      t.decimal :occupancy
      t.integer :scenario_id

      t.timestamps
    end
  end
end
