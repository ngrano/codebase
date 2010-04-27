# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Create default users
# 
# u: s@asd.fi
# p: simoasd
# 
# u: o@asd.fi
# p: olliasd
#
# u: n@asd.fi
# p: niklasasd
users = ['Simo Niemelä', 'Olli Salmu', 'Niklas Granö'].map do |name|
  first, last = name.split(/\s+/)
  password = (first + 'asd').downcase
  first_letter = first[0].chr

  {
    :name => name,
    :nick => first.downcase,
    :email => "#{first_letter.downcase}@asd.fi",
    :password => password,
    :password_confirmation => password
  }
end

User.create!(users)

# Create blogs
Blog.create!(['Ohjelmointi', 'Pelit'].map { |b| {:name => b, :alias => b.downcase} })

# Create posts
Post.create!([
  { :title => 'Rails 3', :body => 'asd asd', :user_id => User.first.id, :markup => 'markdown', :blog_id => Blog.first.id },
  { :title => 'Gears of war 3 vuonna 2011', :body => 'asd asdasd asd', :markup => 'markdown', :user_id => User.last.id, :blog_id => Blog.last.id }
])