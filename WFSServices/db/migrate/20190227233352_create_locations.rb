class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :zipcode

      t.timestamps
    end
  end
end
