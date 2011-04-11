class AddDescriptionToPoll < ActiveRecord::Migration
  def self.up
    add_column :polls, :description, :text
  end

  def self.down
    remove_column :polls, :description
  end
end
