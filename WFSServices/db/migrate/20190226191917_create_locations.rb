class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :name
      t.string :phone_number
      t.string :street
      t.string :city
      t.string :zipcode
      t.string :picture
      t.string :map_link
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
