require 'foundation_form/action_view_extensions/form_helper'

module FoundationForm
  extend ActiveSupport::Autoload

  eager_autoload do
    autoload :FormBuilder
  end
end
