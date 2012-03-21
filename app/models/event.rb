class Event < ActiveRecord::Base

  validates_presence_of :name, :description, :location
  validates_length_of :description, :minimum => 10
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  validates_numericality_of :capacity, :only_integer => true
  validates_format_of :image_file_name, :message => "must reference a GIF, JPG, or PNG image",
  :with => /\w+\.(gif|jpg|jpeg|png)$/i

  def self.upcoming # can also say Event.upcoming, but idiom is to use self
    where('starts_at >= ?', Time.now).order("starts_at")
  end
end
