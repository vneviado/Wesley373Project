class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.date :date_created
      t.references :service, foreign_key: true
      t.string :created_by
      t.string :updated_by
      
      t.timestamps
    end
  end
end
