# frozen_string_literal: true

module Users
  class HobbiesUsersController < ApplicationController
    before_action :authenticate_user!

    def index
      @hobbies = user.hobbies
    end

    def destroy
      user.hobbies.destroy(hobby)
      redirect_to user_hobbies_users_path(user)
    end

    private

    def hobby_params
      params.require(:hobby).permit(:name)
    end

    def user
      @user ||= User.find(params[:user_id])
    end

    def hobby
      @hobby ||= Hobby.find(params[:hobby_id])
    end
  end
end
