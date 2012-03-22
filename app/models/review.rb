class Review < ActiveRecord::Base
  validates_presence_of :name, :email, :comments
end
