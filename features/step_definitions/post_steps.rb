# encoding: utf-8

Oletetaan /^että olen lisäämässä uutta artikkelia "([^\"]*)"\-blogiin$/ do |blog|
  visit new_admin_blog_post_path(Blog.find_by_name(blog))
end

Oletetaan /^että blogissa "([^\"]*)" on artikkeli "([^\"]*)"$/ do |blog, post|
  b = Blog.find_by_name(blog)
  p = b.posts.build(:title => post, :body => 'terve')
  p.save!
end
