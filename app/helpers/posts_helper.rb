module PostsHelper
  def markup(body, markup_lang)
    case markup_lang.to_s.downcase.to_sym
    when :markdown
      RDiscount.new(body).to_html
    when :textile
      RedCloth.new(body).to_html
    else
      body
    end.html_safe
  end
end
