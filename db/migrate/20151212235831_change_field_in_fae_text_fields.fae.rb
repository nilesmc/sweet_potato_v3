# This migration comes from fae (originally 20141126180534)
class ChangeFieldInFaeTextFields < ActiveRecord::Migration
  def change
    rename_column :fae_text_fields, :attatched_as, :attached_as
    rename_index :fae_text_fields, :attatched_as, :attached_as
  end
end
