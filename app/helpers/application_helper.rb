module ApplicationHelper
  def current_class_if(controller_and_action, p = {})
    controller, action = controller_and_action.split('#')
    p = p.merge(:controller => controller, :action => action)
    
    'current' if p.all? { |key, value| params[key.to_sym] == value.to_s }
  end
end
