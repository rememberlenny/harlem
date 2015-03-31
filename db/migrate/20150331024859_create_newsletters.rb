class CreateNewsletters < ActiveRecord::Migration
  def change
    create_table :newsletters do |t|
      t.string :title
      t.text :message
      t.text :schedules
      t.text :photos

      t.timestamps null: false
    end
  end
end
