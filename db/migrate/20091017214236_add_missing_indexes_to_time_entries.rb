# frozen_string_literal: false

class AddMissingIndexesToTimeEntries < ActiveRecord::Migration[4.2]
  def self.up
    add_index :time_entries, :activity_id
    add_index :time_entries, :user_id
  end

  def self.down
    remove_index :time_entries, :activity_id
    remove_index :time_entries, :user_id
  end
end
