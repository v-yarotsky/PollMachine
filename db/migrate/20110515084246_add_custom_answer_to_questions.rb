class AddCustomAnswerToQuestions < ActiveRecord::Migration
  def self.up
    add_column :questions, :allow_custom_answer, :boolean, :default => false
  end

  def self.down
    remove_column :questions, :allow_custom_answer
  end
end