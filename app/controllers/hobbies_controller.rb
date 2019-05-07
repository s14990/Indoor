# frozen_string_literal: true

class HobbiesController < ApplicationController
  before_action :authenticate_user!

  def index
    @hobbies = Hobby.all
  end

  def create
    @hobby = Hobby.create!(hobby_params)
    redirect_to hobbies_path
  end

  def show
    hobby
  end

  def add_user
    user.hobbies << hobby
    redirect_to hobbies_path
  end

  private

  def hobby_params
    params.require(:hobby).permit(:name)
  end

  def hobby
    @hobby ||= Hobby.find(params[:id])
  end

  def user
    @user ||= User.find(params[:user_id])
  end
end
