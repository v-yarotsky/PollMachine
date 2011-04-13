class CreateAnswers < ActiveRecord::Migration
  def self.up
    create_table :answers do |t|
      t.string :uuid, :limit => 36
      t.integer :question_id
      t.integer :predefined_answer_id
      t.text :custom_answer_text

      t.timestamps
    end
    add_index :answers, [:id, :question_id]
  end

  def self.down
    remove_index :answers, :column => [:id, :question_id]
    drop_table :answers
  end
end
