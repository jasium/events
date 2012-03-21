require 'spec_helper'

describe Event do

  it "should work" do
    1.should == 1
  end

  Given(:valid_attributes) {
    {
        name: "Ruby Conf",
        description: "a ruby conference lalalalallalala",
        location: "reston VA,",
        capacity: 10,
        price:200.00,
        image_file_name: "a.png"
    }
  }

  Given(:attributes) {valid_attributes}
  Given(:event) { Event.new(attributes)  }
  When {event.valid?}
  Then { event.should be_valid }

  context "where the name is missing" do
    Given(:attributes) {      valid_attributes.except(:name)    }
    Then { event.should_not be_valid }
    Then { event.errors[:name].join.should =~ /blank/}
  end

  context "where the description is missing" do
    Given(:attributes) {      valid_attributes.except(:description)    }
    Then { event.should_not be_valid }
  end

end
