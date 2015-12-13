class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :capacity
      t.string :venue_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :organizer_id
      t.text :restrictions
      t.string :tradition
      t.text :introduction
      t.text :description
      t.text :preparation
      t.text :instructions
      t.text :code_of_conduct
      t.text :comments

      t.timestamps null: false
    end
  end
end
