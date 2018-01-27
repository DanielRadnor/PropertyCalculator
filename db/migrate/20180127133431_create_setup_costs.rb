class CreateSetupCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :setup_costs do |t|
      t.decimal :purchase_price
      t.decimal :sdlt
      t.decimal :acquisition_fee
      t.decimal :debt_arrangement_fee
      t.decimal :equity_raising_fee
      t.decimal :legal_fee
      t.decimal :survey_fee
      t.decimal :admin_fee
      t.decimal :contingency
      t.integer :scenario_id

      t.timestamps
    end
  end
end
