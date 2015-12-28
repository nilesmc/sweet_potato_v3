class AddCoordinatesToEvent < ActiveRecord::Migration
  def change
    add_column :events, :latitude, :decimal, precision: 12, scale: 8
    add_column :events, :longitude, :decimal, precision: 12, scale: 8
  end
end
