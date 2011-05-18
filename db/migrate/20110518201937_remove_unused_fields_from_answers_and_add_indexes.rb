class RemoveUnusedFieldsFromAnswersAndAddIndexes < ActiveRecord::Migration
  def self.up
    remove_column :answers, :custom_answer_text
    add_index :answers, [:uuid, :predefined_answer_id], :unique => true
  end

  def self.down
    remove_index :answers, :column => [:uuid, :predefined_answer_id]
    add_column :answers, :custom_answer_text, :text
  end
end