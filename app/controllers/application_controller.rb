class ApplicationController < ActionController::Base
  include ApplicationHelper
  include Pagy::Backend

  add_flash_types :error, :success, :created, :updated, :deleted
  before_action :authenticate_user!
end
