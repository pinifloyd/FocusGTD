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
        locale       = params[:locale].try(:to_sym)
        is_available = I18n.available_locales.include?(locale)

        I18n.locale = is_available ? locale : I18n.default_locale
      end

      def default_url_options(options = {})
        { locale: I18n.locale }
      end

    end
  end
end