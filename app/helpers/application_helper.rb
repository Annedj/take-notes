module ApplicationHelper
  def dark?
    cookies[:theme] == 'dark'
  end

  def dark_class?
    dark? ? 'dark' : nil
  end
end
