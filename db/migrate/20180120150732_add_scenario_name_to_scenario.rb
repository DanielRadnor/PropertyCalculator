class AddScenarioNameToScenario < ActiveRecord::Migration[5.1]
  def change
    add_column :scenarios, :scenario_name, :text
    add_column :scenarios, :description, :text
    add_column :scenarios, :property_id, :integer
  end
end
