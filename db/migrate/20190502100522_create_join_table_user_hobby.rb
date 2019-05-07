# frozen_string_literal: true

class CreateJoinTableUserHobby < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :hobbies do |t|
      t.index %i[user_id hobby_id], unique: true
    end
  end
end
