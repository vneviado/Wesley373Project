class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :role
      t.string :group_string
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
