class AddUserIdToPolls < ActiveRecord::Migration
  def self.up
    add_column :polls, :user_id, :integer
    add_index :polls, :user_id
  end

  def self.down
    remove_column :polls, :user_id
    remove_index :polls, :columns => :user_id
  end
end
