class CreateValuationDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :valuation_details do |t|
      t.decimal :net_initial_yield
      t.decimal :purchasers_costs
      t.integer :scenario_id

      t.timestamps
    end
  end
end
