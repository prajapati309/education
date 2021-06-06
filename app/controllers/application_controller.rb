class ApplicationController < ActionController::Base
    before_action :set_locale

    def set_locale
        if cookies[:locale] && I18n.available_locales.include?(cookies[:locale].to_sym)
            l = cookies[:locale].to_sym
        else
            l = I18n.default_locale
            cookies.permanent[:locale] = l
        end
        I18n.locale = l
    end
end
