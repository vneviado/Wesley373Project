class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :sname
      t.string :description
      t.string :philosophy
      t.string :entrance_criteria
      t.string :exclusion_criteria
      t.string :exit_criteria
      t.string :level_of_care
      t.string :average_length_of_stay
      t.string :referral_process
      t.string :matching_elements
      t.string :created_by
      t.string :updated_by
      t.references :category
      t.references :contact
      t.references :location
      t.references :service_type
      t.timestamps
    end
  end
end
