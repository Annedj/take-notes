class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:set_theme, :toggle_theme]

  def set_theme
    cookies[:theme] = 'light'
  end

  def toggle_theme
    theme = cookies[:theme]
    cookies[:theme] = theme == 'light' ? 'dark' : 'light'
    redirect_to(request.referrer || root_path)
  end
end
