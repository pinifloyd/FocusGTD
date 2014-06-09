module FoundationForm
  module ActionViewExtensions
    # This module creates FoundationForm wrappers arround default form_for.
    #
    # == Example:
    #
    #   foundation_form_for @user do |f|
    #     f.email_field :email
    #   end
    #
    module FormHelper
      def foundation_form_for(record, options = {}, &block)
        options[:builder] ||= FoundationForm::FormBuilder
        form_for(record, options, &block)
      end
    end
  end
end

ActionView::Base.send :include, FoundationForm::ActionViewExtensions::FormHelper
