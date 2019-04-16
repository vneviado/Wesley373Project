class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :name
      t.string :description
      t.string :philosophy
      t.string :entrance_criteria
      t.string :exclusion_criteria
      t.string :exit_criteria
      t.string :level_of_care
      t.string :average_length_of_stay
      t.string :referral_process
      t.string :matching_elements
      t.string :web_address
      t.string :array_of_services
      t.string :microenterprise
      t.string :created_by
      t.string :updated_by
      t.references :category
      t.timestamps
    end
  end
end
