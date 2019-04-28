class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :role
      t.string :group_string

      t.integer :services, array: true, default: []

      t.timestamps
    end
  end
end
