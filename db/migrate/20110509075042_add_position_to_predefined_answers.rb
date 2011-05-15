class AddPositionToPredefinedAnswers < ActiveRecord::Migration
  def self.up
    add_column :predefined_answers, :position, :integer, :default => 0
  end

  def self.down
    remove_column :predefined_answers, :position
  end
end
