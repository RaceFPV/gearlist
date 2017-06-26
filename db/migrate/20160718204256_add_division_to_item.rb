class AddDivisionToItem < ActiveRecord::Migration
  def change
    add_column :items, :division, :text
  end
end
