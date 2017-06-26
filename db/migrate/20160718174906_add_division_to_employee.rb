class AddDivisionToEmployee < ActiveRecord::Migration
  def change
    add_column :employees, :division, :text
  end
end
