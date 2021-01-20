module ApplicationHelper
  def dark?
    cookies[:theme] == 'dark'
  end

  def dark_class?
    dark? ? 'dark' : nil
  end

  def btn_dark?(outline: false)
    if outline
      "btn btn-outline-#{dark? ? 'warning' : 'primary'}"
    else
      "btn btn-#{dark? ? 'warning' : 'primary'}"
    end
  end
end
