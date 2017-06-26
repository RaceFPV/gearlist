class AddDivisionToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :division, :text
  end
end
