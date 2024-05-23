class ApplicationController < ActionController::Base
    # before_action :set_locale
    # def set_locale
    #   # if params[:locale] is nil then I18n.default_locale will be used
    #   I18n.locale = params[:locale]
    # end
    
    # def default_url_options(options={})
    #   { locale: I18n.locale }
    # end

    around_action :switch_locale

    def switch_locale(&action)
        locale = params[:locale] || I18n.default_locale
        I18n.with_locale(locale, &action)
    end

    def logged_in?
        !current_user.nil?
    end
end
