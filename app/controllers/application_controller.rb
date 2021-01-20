class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:set_theme, :toggle_theme]

  def set_theme
    cookies[:theme] = 'light'
  end

  def toggle_theme
    theme = cookies[:theme]
    cookies[:theme] = theme == 'light' ? 'dark' : 'light'
    p controller_path
    p request.referrer
    p '***************'
    if request.referrer.match(/users/)
      redirect_to(request.referrer)
    else
      redirect_to(request.referrer)
    end
  end
end
