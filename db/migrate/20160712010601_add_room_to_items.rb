class AddRoomToItems < ActiveRecord::Migration
  def change
    add_reference :items, :room, index: true, foreign_key: true
  end
end
