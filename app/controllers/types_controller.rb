# frozen_string_literal: true

class TypesController < ApplicationController
  before_action :require_login

  def index
    render controller_name
  end
end
