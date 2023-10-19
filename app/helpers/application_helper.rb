module ApplicationHelper
  include Pagy::Frontend

  # Flash Messages
  def notification_class(level)
    case level
    when :notice then "notification-notice"
    when :success then "notification-success"
    when :error then "notification-error"
    when :alert then "notification-alert"
    end
  end

end
