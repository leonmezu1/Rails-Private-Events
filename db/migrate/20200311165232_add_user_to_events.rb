# frozen_string_literal: true

# Migration
class AddUserToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :user_id, :string
  end
end
