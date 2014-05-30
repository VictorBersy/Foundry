class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = extract_locale_from_subdomain || I18n.default_locale
  end

  protected

  def extract_locale_from_subdomain
    parsed_locale = request.subdomains.first
    return nil if parsed_locale.nil?
    I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale : nil
  end
end
