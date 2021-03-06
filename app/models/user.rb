# encoding: UTF-8

class User < ActiveRecord::Base
  include Gravtastic
  is_gravtastic!

  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :nick, :email, :password, :password_confirmation, :remember_me
end
