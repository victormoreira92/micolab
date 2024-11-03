module ApplicationHelper

  def flash_class(level)
    case level
    when 'notice' then 'alert alert-info'
    when 'success' then 'alert alert-success'
    when 'error' then 'alert alert-danger'
    when 'alert' then 'alert alert-warning'
    end
  end

  def devise_controller(controller)
    %w[devise/sessions devise/registrations devise/].include?(controller)
  end

  def menu_open(nome_controlller)
    'bg-primary' if params[:controller] == nome_controlller
  end
  
end
