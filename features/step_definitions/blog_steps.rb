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

Niin /^kaikki blogit ovat poistettu$/ do
  Blog.all.should == []
end
