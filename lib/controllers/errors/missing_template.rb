module Controllers
  module Errors
    module MissingTemplate

      def self.included(base)
        base.class_eval do
          rescue_from ActionView::MissingTemplate, with: :render_500
        end
      end

    private

      def render_500
        respond_to do |format|
          format.html { render file: "#{Rails.root}/public/500", layout: false, formats: [:html], status: '500 Internal Server Error'}
          format.all  { render nothing: true, status: '500 Internal Server Error' }
        end
      end

    end
  end
end