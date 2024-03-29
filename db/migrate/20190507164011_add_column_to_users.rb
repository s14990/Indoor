# frozen_string_literal: true

class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :ip_address, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
