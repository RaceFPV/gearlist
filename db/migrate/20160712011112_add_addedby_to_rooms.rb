class AddAddedbyToRooms < ActiveRecord::Migration
  def change
    add_column :rooms, :addedby, :integer
  end
end
