# frozen_string_literal: true

class FoodsController < ApplicationController
  before_action :require_login

  def index
    render controller_name
  end
end
