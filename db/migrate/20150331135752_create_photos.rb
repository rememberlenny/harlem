class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :url
      t.date :date
      t.text :notes
      t.references :newsletters, index: true

      t.timestamps null: false
    end
    add_foreign_key :photos, :newsletters
    add_index :photos, [:newsletter_id, :created_at]
  end
end
