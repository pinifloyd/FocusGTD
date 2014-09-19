require 'controllers/errors/missing_template'

ApplicationController.send :include, Controllers::Errors::MissingTemplate