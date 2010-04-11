module ApplicationHelper
  def current_class_if(*args)
    options = args.extract_options!
    
    if parts = args.first
      controller, action = parts.split('#')
      options.merge!(:controller => controller, :action => action)
    end
    
    'current' if current_page?(options)
  end
end
