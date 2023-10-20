class ApplicationController < ActionController::Base
  include ApplicationHelper
  include Pagy::Backend

  before_action :authenticate_user!
end
