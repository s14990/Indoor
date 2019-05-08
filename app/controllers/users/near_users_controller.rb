# frozen_string_literal: true

module Users
  class NearUsersController < ApplicationController
    before_action :authenticate_user!

    def index
      result = user.nearbys(5000)
      if result.present?
        @users = result.first(5)
      else
        @err = 'No user was found'
      end
    end

    private

    def user
      @user ||= User.find(params[:user_id])
    end
  end
end
