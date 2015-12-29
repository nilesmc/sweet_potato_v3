class AddFieldsToEvent < ActiveRecord::Migration
  def change
    add_column :events, :price, :decimal, precision: 8, scale: 2
    add_column :events, :start_time, :time
    add_column :events, :end_time, :time
  end
end
