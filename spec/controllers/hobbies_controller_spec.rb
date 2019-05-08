# frozen_string_literal: true

require 'rails_helper'

RSpec.describe HobbiesController, type: :controller do
  it 'responds with 302' do
    get 'index'
    expect(response).to have_http_status(302)
  end

  it 'redirects to login' do
    get 'index'
    expect(response).to redirect_to('/users/sign_in')
  end
end
