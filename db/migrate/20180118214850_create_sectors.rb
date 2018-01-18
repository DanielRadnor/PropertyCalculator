class CreateSectors < ActiveRecord::Migration[5.1]
  def change
    create_table :sectors do |t|
      t.text :sector_name

      t.timestamps
    end
  end
end
