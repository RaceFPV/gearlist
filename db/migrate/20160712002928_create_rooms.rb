class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.text :name
      t.text :location
      t.text :description
      t.integer :modifiedby
      t.integer :createdby
      t.text :floor

      t.timestamps null: false
    end
  end
end
