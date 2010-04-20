# encoding: utf-8

Oletetaan /^että olen lisäämässä uutta artikkelia "([^\"]*)"\-blogiin$/ do |blog|
  visit new_admin_blog_post_path(Blog.find_by_name(blog))
end

Oletetaan /^että blogissa "([^\"]*)" on artikkeli "([^\"]*)"$/ do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
