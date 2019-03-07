class CreateCosts < ActiveRecord::Migration[5.1]
  def change
    create_table :costs do |t|
      t.float :unit_cost
      t.float :unit_rate
      t.float :avg_los
      t.float :rev_los
      t.string :frequency
      t.references :service_type

      t.timestamps
    end
  end
end
