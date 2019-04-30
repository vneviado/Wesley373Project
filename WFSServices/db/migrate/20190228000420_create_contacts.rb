class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :work_number
      t.string :phone_number
      t.string :street_1
      t.string :city_1
      t.string :zipcode_1
      t.string :street_2
      t.string :city_2
      t.string :zipcode_2
      t.string :role
      t.string :photo
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
