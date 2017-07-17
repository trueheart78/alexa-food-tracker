# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Clearance::Controller
  before_action :set_paper_trail_whodunnit
  protect_from_forgery with: :exception
end
