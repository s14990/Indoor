# frozen_string_literal: true

module ErrorsHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordInvalid do |exception|
      render json: exception.record.errors, status: 422
    end

    rescue_from ActiveRecord::RecordNotFound do |exception|
      render json: { error: exception.message }, status: 404
    end

    rescue_from Timeout::Error do |exception|
      render json: { error: exception.message }, status: 504
    end

    rescue_from Geocoder::ServiceUnavailable do |exception|
      render json: { error: exception.message }, status: 503
    end
  end
end
