# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ErrorsHandler
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
