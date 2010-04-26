module LayoutHelper
  def or_cancel(options = {})
    text = options[:text] || t('cancel')
    or_text = options[:or] || t('or')
    link = link_to_back(text, options)
    "#{or_text} #{link}".html_safe
  end

  def or_back(options = {})
    or_cancel(options.reverse_merge!(:text => t('back')))
  end
  
  def link_to_back(text = nil, options = {})
    text = text || t('back')
    
    if to = options[:to]
      link_to text, to
    elsif referer = request.headers["Referer"]
      link_to text, referer
    else
      link_to text, root_path
    end
  end

  def title(text)
    content_for(:title) { text }
    content_tag(:h2) { text }
  end
end