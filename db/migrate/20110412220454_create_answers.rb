class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :uuid, :limit => 36
      t.integer :question_id
      t.integer :predefined_answer_id
      t.text :custom_answer_text

      t.timestamps
    end
    add_index :answers, :question_id
    add_index :answers, :predefined_answer_id
    add_index :answers, :uuid
  end

  def self.down
    remove_index :answers, :column => :question_id
    remove_index :answers, :column => :predefined_answer_id
    remove_index :answers, :column => :uuid
    drop_table :answers
  end
end
