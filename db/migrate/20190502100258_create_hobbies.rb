# frozen_string_literal: true

class CreateHobbies < ActiveRecord::Migration[5.2]
  def change
    create_table :hobbies do |t|
      t.string :name

      t.timestamps
    end
  end
end
