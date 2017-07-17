# frozen_string_literal: true

class LocationsController < ApplicationController
  before_action :require_login

  def index
    render controller_name
  end
end
