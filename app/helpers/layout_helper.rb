module LayoutHelper
  def or_cancel(options = {})
    text = options[:text] || t('cancel')
    or_text = options[:or] || t('or') 

    link = if to = options[:to]
      link_to text, to
    elsif referer = request.headers["Referer"]
      link_to text, referer
    else
      link_to text, root_path
    end
    
    "#{or_text} #{link}".html_safe
  end
end