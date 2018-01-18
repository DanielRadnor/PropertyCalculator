class AddSectorIdToProperties < ActiveRecord::Migration[5.1]
  def change
    add_column :properties, :sector_id, :integer
  end
end
