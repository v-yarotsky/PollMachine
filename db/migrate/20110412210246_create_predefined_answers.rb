class CreatePredefinedAnswers < ActiveRecord::Migration
  def self.up
    create_table :predefined_answers do |t|
      t.integer :question_id
      t.text :text

      t.timestamps
    end
  end

  def self.down
    drop_table :predefined_answers
  end
end
