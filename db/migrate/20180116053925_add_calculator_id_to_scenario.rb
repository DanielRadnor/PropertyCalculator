class AddCalculatorIdToScenario < ActiveRecord::Migration[5.1]
  def change
    add_column :scenarios, :calculator_id, :integer
  end
end
