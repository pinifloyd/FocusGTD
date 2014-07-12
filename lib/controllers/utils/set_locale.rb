module Controllers
  module Utils
    module SetLocale
    
      def self.included(base)
        base.class_eval do
          before_filter :set_locale
        end
      end
    
    private
  
      def set_locale
        I18n.locale = params[:locale] || I18n.default_locale
      end
    
      def default_url_options(options = {})
        { locale: I18n.locale }
      end

    end
  end
end