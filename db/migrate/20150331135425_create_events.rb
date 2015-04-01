class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :datetime
      t.text :notes
      t.integer :newsletter_id

      t.timestamps null: false
    end
  end
end
