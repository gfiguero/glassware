module ApplicationHelper
  include IconsHelper
  include Pagy::Frontend

  # Flash Messages
  def notification_class(level)
    case level
    when :notice then "notification-notice"
    when :alert then "notification-alert"
    when :error then "notification-error"
    when :success then "notification-success"
    when :created then "notification-created"
    when :updated then "notification-updated"
    when :deleted then "notification-deleted"
    end
  end

  def sort_scope(column)
    "sort_by_#{column}"
  end

  def filter_scope(attribute)
    "filter_by_#{attribute}"
  end

  def sort_link(path, link_text, column, sort_column = nil, sort_direction = nil)
    link_text ||= path
    if sort_column == column
      return link_to raw(link_text + icon('chevron-up', 'w-5 h-2')), send(path, request.params.merge(sort_column: column, sort_direction: 'desc' )), { class: 'flex items-center'} if sort_direction == 'asc'
      return link_to raw(link_text + icon('chevron-down', 'w-5 h-2')), send(path, request.params.merge( sort_column: column, sort_direction: 'asc' )), { class: 'flex items-center'} if sort_direction == 'desc'
    else
      link_to raw(link_text + icon('chevron-sort', 'w-5 h-3')), send(path, request.params.merge( sort_column: column, sort_direction: 'asc' )), { class: 'flex items-center'}
    end
  end

  def notification_icon(notification_key)
    case notification_key
    when 'notice' then return icon('info-circle')
    when 'alert' then return icon('exclamation-circle')
    when 'error' then return icon('close-circle')
    when 'success' then return icon('check-circle')
    when 'created' then return icon('plus-circle')
    when 'updated' then return icon('edit')
    when 'deleted' then return icon('trash')
    else return icon('info-circle')
    end
  end

  def icon_text(string)
    raw('<div class="ml-2">' + I18n.t(string) + '</div>')
  end
end
