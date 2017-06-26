class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :room_references
      t.text :name
      t.text :category
      t.text :model
      t.text :os
      t.text :processor
      t.text :assettag
      t.text :hostname
      t.text :ponumber
      t.text :notes
      t.text :servicetag

      t.timestamps null: false
    end
  end
end
