class AddCoordinatesToEvent < ActiveRecord::Migration
  def change
    add_column :events, :latitudee, :decimal, precision: 12, scale: 8
    add_column :events, :longitudee, :decimal, precision: 12, scale: 8
  end
end
