class CreateServiceContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :service_contacts do |t|
      t.references :service, foreign_key: true
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
