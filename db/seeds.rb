# encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

# Create default users
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