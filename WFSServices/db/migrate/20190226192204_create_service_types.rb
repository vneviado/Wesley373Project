class CreateServiceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :service_types do |t|
      t.string :name
      t.string :staff
      t.float :unit_cost
      t.float :unit_rate
      t.float :avg_los
      t.float :rev_los
      t.string :frequency
      t.string :created_by
      t.string :updated_by
      t.references :service

      t.timestamps
    end
  end
end
