class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.string :location
      t.integer :capacity
      t.decimal :price
      t.datetime :starts_at
      t.string :image_file_name

      t.timestamps
    end
  end
end
