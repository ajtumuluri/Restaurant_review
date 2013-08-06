class Item < ActiveRecord::Base
  attr_accessible :name, :restaurant

 validates :name, length: { minimum: 2 }
 validates

end
