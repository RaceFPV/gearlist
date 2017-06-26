class AddModelcodeToItem < ActiveRecord::Migration
  def change
    add_column :items, :modelcode, :text
  end
end
