require 'test_helper'

class EventTest < ActiveSupport::TestCase

  setup do
    @valid_attributes =   {  name: "Ruby Conf",
                             description: "A ruby conference that needs at least 25 characters",
                             location: "Reston, VA",
                             capacity: 100,
                             price: 9.99,
                             starts_at: "2012-03-20 13:42:25",
                             image_file_name: "image.png"
                         }
  end

  test "can create a valid event" do
    event = Event.new(@valid_attributes)
    assert event.valid?
  end

  test "event needs a name" do
    event = Event.new(@valid_attributes.except(:name))
    assert event.invalid?, "Event needs a name"
  end

  test "event is free when price is zero" do
    event = Event.new(@valid_attributes.merge(price: 0))
    assert event.free?
  end
  test "event not free when price is nonzero" do
    event = Event.new(@valid_attributes)
    refute event.free?
  end
  test "event is free when price is nil" do
    event = Event.new(@valid_attributes)
    refute event.free?
  end
end
