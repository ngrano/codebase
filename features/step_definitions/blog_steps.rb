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

Oletetaan /^että olen sivulla "([^\"]*)"$/ do |page|
  visit(page)
end

Oletetaan /^että minulla on yksi blogi$/ do
  Blog.create!(:name => 'Ohjelmointi', :alias => 'ohjelmointi')
end

Kun /^syötän kenttään "([^\"]*)" arvon "([^\"]*)"$/ do |field, value|
  fill_in(field, :with => value)
end

Kun /^painan nappia "([^\"]*)"$/ do |button|
  click_button(button)
end

Niin /^ruudulla pitäisi näkyä "([^\"]*)"$/ do |text|
  page.should have_content(text)
end

Kun /^klikkaan linkkiä "([^\"]*)"$/ do |link|
  click_link(link)
end

Niin /^kaikki blogit ovat poistettu$/ do
  Blog.all.should == []
end
