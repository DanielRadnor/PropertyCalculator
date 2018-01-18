class CreateScenarios < ActiveRecord::Migration[5.1]
  def change
    create_table :scenarios do |t|
      t.decimal :value_c

      t.timestamps
    end
  end
end
