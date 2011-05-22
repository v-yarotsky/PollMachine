class RemoveCustomAnswerPossibility < ActiveRecord::Migration
  def self.up
    remove_column :questions, :allow_custom_answer
  end

  def self.down
    add_column :questions, :allow_custom_answer, :boolean, :default => false
  end
end
