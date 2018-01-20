class RemoveValueCFromScenario < ActiveRecord::Migration[5.1]
  def change
    remove_column :scenarios, :value_c, :decimal
    remove_column :scenarios, :calculator_id, :integer
  end
end
