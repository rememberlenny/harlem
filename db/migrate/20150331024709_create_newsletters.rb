class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.text :message
      t.integer :schedule_id
      t.integer :photo_id

      t.timestamps null: false
    end
  end
end
