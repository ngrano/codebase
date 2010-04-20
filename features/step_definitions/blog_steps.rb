# encoding: utf-8

Oletetaan /^että olen kirjautuneena sisään$/ do
  name = 'Simo'
  e = 'simo@asd.fi'
  p = 'simoasd'
  User.new(:name => name, :email => e, :password => p, :password_confirmation => p).save!
  visit('/admin/users/login')
  fill_in('user_email', :with => e)
  fill_in('user_password', :with => p)
  click_button('user_submit')
end

Oletetaan /^että minulla on yksi blogi$/ do
  Blog.create!(:name => 'Ohjelmointi', :alias => 'ohjelmointi')
end

Oletetaan /^että minulla on blogi (.*)$/ do |blog_name|
  Blog.create!(:name => blog_name.capitalize, :alias => blog_name.downcase)
end

Oletetaan /^että minulla on blogit (.*)$/ do |blogs|
  blogs = blogs.split(', ')
  blogs.each do |blog|
    Blog.create!(:name => blog.capitalize, :alias => blog.downcase)
  end
end


Niin /^kaikki blogit ovat poistettu$/ do
  Blog.all.should == []
end
