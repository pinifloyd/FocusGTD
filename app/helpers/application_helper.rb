module ApplicationHelper

  def page_title
    content_for?(:title) ? content_for(:title) : t(:title)
  end

  def add_content_hook(name)
    content_for(name) if content_for?(name)
  end

end
