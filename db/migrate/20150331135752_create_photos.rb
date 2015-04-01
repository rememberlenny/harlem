class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.date :date
      t.text :notes
      t.integer :newsletter_id

      t.timestamps null: false
    end
  end
end
