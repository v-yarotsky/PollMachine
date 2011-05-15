class AddAnswersTypeAndPositionFieldsToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :position, :integer, :default => 0
    add_column :questions, :multiple_answers, :boolean, :default => false
  end

  def self.down
    remove_column :questions, :position
    remove_column :questions, :multiple_answers
  end
end
