# frozen_string_literal: false

class AddWorkflowsRuleFields < ActiveRecord::Migration[4.2]
  def up
    add_column :workflows, :field_name, :string, :limit => 30
    add_column :workflows, :rule, :string, :limit => 30
  end

  def down
    remove_column :workflows, :field_name
    remove_column :workflows, :rule
  end
end
