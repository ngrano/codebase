module ApplicationHelper
  def current_class_if(controller_and_action, p = {})
    controller, action = controller_and_action.split('#')
    p[:controller] = controller if controller
    p[:action] = action if action
    
    'current' if p.all? { |key, value| params[key.to_sym] == value.to_s }
  end

  def current_sub_if(*args)
    'current_sub' if current_class_if(*args)
  end
end
