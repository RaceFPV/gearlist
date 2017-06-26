class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.text :firstname
      t.text :lastname
      t.references :room, index: true, foreign_key: true
      t.datetime :hired
      t.integer :addedby
      t.integer :modifiedby

      t.timestamps null: false
    end
  end
end
