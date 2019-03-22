class CreateServiceLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :service_locations do |t|
      t.references :service, foreign_key: true
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
