class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :content
      t.date :date_created
      t.references :service, foreign_key: true

      t.timestamps
    end
  end
end
