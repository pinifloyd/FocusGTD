module Controllers
  module Errors
    module MissingTemplate
      
      def self.included(base)
        base.class_eval do
          rescue_from ActionView::MissingTemplate, with: :render_404
        end
      end
      
    private
    
      def render_404
        respond_with do |format|
          format.html { render file: "#{Rails.root}/public/404", layout: false, formats: [:html], status: '404 Not Found' }
          format.all  { render nothing: true, status: '404 Not Found'}
        end
      end
      
    end
  end
end