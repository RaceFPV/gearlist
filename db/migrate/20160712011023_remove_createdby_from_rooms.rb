class RemoveCreatedbyFromRooms < ActiveRecord::Migration
  def change
    remove_column :rooms, :createdby, :integer
  end
end
