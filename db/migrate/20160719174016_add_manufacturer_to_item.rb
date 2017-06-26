class AddManufacturerToItem < ActiveRecord::Migration
  def change
    add_column :items, :manufacturer, :text
  end
end
