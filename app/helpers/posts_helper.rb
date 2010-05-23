module PostsHelper
  def markup(body, markup_lang)
    case markup_lang.to_s.downcase
    when 'markdown'
      RDiscount.new(coderay(body, 'markdown')).to_html
    when 'textile'
      RedCloth.new(coderay(body, 'textile')).to_html
    else
      body
    end.html_safe
  end

  def coderay(text, markup_lang)
    text.gsub!(/\<code( lang="(.+?)")?\>(.+?)\<\/code\>/m) do
      code = CodeRay.scan($3, $2).div(:css => :class)
      "<no#{markup_lang}>#{code}</no#{markup_lang}>"
    end

    text.html_safe
  end
end
