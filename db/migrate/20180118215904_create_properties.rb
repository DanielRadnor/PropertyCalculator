class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.text :property_name
      t.text :address
      t.text :postcode

      t.timestamps
    end
  end
end
