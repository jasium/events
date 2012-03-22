class Registration < ActiveRecord::Base

  validates_presence_of :name, :email
  belongs_to :event
end
