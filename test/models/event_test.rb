require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test "Event is not saved without title" do
    event1 = Event.new()
    assert_not(event1.valid?, "Event is valid without title")
  end

end
