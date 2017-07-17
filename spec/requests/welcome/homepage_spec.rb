# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Welcome Page', type: :request do
  it 'displays the home page' do
    get root_path

    expect(response).to be_ok
  end

  it 'displays the sign in option' do
    get root_path

    expect(response.body).to include 'Sign in'
  end
end
