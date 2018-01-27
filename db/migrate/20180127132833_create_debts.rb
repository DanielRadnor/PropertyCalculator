class CreateDebts < ActiveRecord::Migration[5.1]
  def change
    create_table :debts do |t|
      t.decimal :ltv
      t.integer :scenario_id

      t.timestamps
    end
  end
end
