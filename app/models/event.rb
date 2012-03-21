class Event < ActiveRecord::Base
#  default_scope order("starts_at")
  scope :free, where("price <= 0").order("name")
  scope :big, where("capacity >= 200").order("capacity DESC")
  scope :inexpensive, where("price < 100").order("price ASC")
  scope :recently_added, order("created_at DESC").limit(3)

  validates_presence_of :name, :description, :location
  validates_length_of :description, :minimum => 25
  validates_numericality_of :price, :greater_than_or_equal_to => 0
  validates_numericality_of :capacity, :only_integer => true
  validates_format_of :image_file_name, :message => "must reference a GIF, JPG, or PNG image",
  :with => /\w+\.(gif|jpg|jpeg|png)$/i

  def self.upcoming # can also say Event.upcoming, but idiom is to use self
    where('starts_at >= ?', Time.now).order("starts_at")
  end

  def free?
    price.zero?
  end

  def self.search(str)
    where "name like ?", "%#{str}%"
  end

 end
