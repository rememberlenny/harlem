class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :datetime
      t.text :notes
      t.references :newsletter, index: true

      t.timestamps null: false
    end
    add_foreign_key :events, :newsletters
    add_index :events, [:newsletter_id, :created_at]
  end
end
