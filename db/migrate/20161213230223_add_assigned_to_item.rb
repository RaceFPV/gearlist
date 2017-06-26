class AddAssignedToItem < ActiveRecord::Migration
  def change
    add_column :items, :assigneduser, :text
    add_column :items, :assignedroom, :text
  end
end
