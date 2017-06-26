class AddAddedbyToItems < ActiveRecord::Migration
  def change
    add_column :items, :addedby, :integer
    add_column :items, :modifiedby, :integer
  end
end
