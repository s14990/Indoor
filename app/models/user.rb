# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable

  has_and_belongs_to_many :hobbies

  geocoded_by :ip_address

  after_find :set_ip # , if: :sign_in_ip_changed?
  after_update :geocode

  before_destroy :delete_user_hobbies

  def set_ip
    update(ip_address: last_sign_in_ip)
  end

  private

  def delete_user_hobbies
    hobbies.destroy_all
  end
end
