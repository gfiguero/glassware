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

  def sort_scope(column)
    "sort_by_#{column}"
  end

  def filter_scope(attribute)
    "filter_by_#{attribute}"
  end

  def sort_link(path, link_text, column)
    link_text ||= path
    if column == params[:sort_column]
      if params[:sort_direction] == 'asc'
        content = link_text
        content += '<svg class="w-3 h-3 ml-1.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 24">'
        content += '<path d="M9.207 1A2 2 0 0 0 6.38 1L.793 6.586A2 2 0 0 0 2.207 10H13.38a2 2 0 0 0 1.414-3.414L9.207 1Z"/>'
        content += '</svg>'
        link_to raw(content), send(path, request.params.merge(sort_column: column, sort_direction: 'desc' )), { class: 'flex items-center'}
      elsif params[:sort_direction] == 'desc'
        content = link_text
        content += '<svg class="w-3 h-3 ml-1.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 -12 16 24">'
        content += '<path d="M15.434 1.235A2 2 0 0 0 13.586 0H2.414A2 2 0 0 0 1 3.414L6.586 9a2 2 0 0 0 2.828 0L15 3.414a2 2 0 0 0 .434-2.179Z"/>'
        content += '</svg>'
        link_to raw(content), send(path, request.params.merge( sort_column: column, sort_direction: 'asc' )), { class: 'flex items-center'}
      end
    else
      content = link_text
      content += '<svg class="w-3 h-3 ml-1.5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 24">'
      content += '<path d="M8.574 11.024h6.852a2.075 2.075 0 0 0 1.847-1.086 1.9 1.9 0 0 0-.11-1.986L13.736 2.9a2.122 2.122 0 0 0-3.472 0L6.837 7.952a1.9 1.9 0 0 0-.11 1.986 2.074 2.074 0 0 0 1.847 1.086Zm6.852 1.952H8.574a2.072 2.072 0 0 0-1.847 1.087 1.9 1.9 0 0 0 .11 1.985l3.426 5.05a2.123 2.123 0 0 0 3.472 0l3.427-5.05a1.9 1.9 0 0 0 .11-1.985 2.074 2.074 0 0 0-1.846-1.087Z"/>'
      content += '</svg>'
      link_to raw(content), send(path, request.params.merge( sort_column: column, sort_direction: 'asc' )), { class: 'flex items-center'}
    end
  end

end
