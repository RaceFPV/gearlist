class AddQatagToItem < ActiveRecord::Migration
  def change
    add_column :items, :QATag, :text
  end
end
