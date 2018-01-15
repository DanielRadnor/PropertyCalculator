class CreateCalculators < ActiveRecord::Migration[5.1]
  def change
    create_table :calculators do |t|
      t.decimal :value_a
      t.decimal :value_b

      t.timestamps
    end
  end
end
