class User < ActiveRecord::Base
  attr_accessible :email, :name

validates :email, confirmation: true
validates :name, :email, :presence => true
end
