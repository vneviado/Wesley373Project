class CreateServiceTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :service_types do |t|
      t.string :name
      t.reference :cost
      t.string :staff
      t.string :created_by
      t.string :updated_by
      t.reference :service

      t.timestamps
    end
  end
end
