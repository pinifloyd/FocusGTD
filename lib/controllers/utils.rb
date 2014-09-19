require 'controllers/utils/set_locale'

ApplicationController.send :include, Controllers::Utils::SetLocale