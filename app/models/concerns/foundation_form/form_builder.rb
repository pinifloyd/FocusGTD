module FoundationForm
  class FormBuilder < ActionView::Helpers::FormBuilder

    attr_reader :object, :template

    def email_field(method, options = {})
      options[:class] ||= ''
      options[:class] <<  ' error' if object.errors[method].any?
      super method, options
    end

    def password_field(method, options = {})
      options[:class] ||= ''
      options[:class] <<  ' error' if object.errors[method].any?
      super method, options
    end

    def error_message(method)
      if message = object.errors[method].try(:first)
        template.content_tag(:small, message, class: 'error')
      end
    end
  end
end
