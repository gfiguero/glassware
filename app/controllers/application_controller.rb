class ApplicationController < ActionController::Base
  add_flash_types :error, :success
  include ApplicationHelper
  before_action :authenticate_user!
end
