# frozen_string_literal: true

class Hobby < ApplicationRecord
  has_and_belongs_to_many :users

  validates :name, presence: true

  before_destroy :delete_user_hobbies

  private

  def delete_user_hobbies
    hobbies.destroy_all
  end
end
