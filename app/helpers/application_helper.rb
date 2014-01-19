module ApplicationHelper

  def page_title
    content_for?(:title) ? content_for(:title) : 'FocusGTD'
  end

  def add_hook name
    content_for name if content_for? name
  end

end
