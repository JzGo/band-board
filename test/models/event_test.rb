require 'test_helper'

class EventTest < ActiveSupport::TestCase

  test "Event is not saved without title" do
    event1 = Event.new(time: Time.now(), place: "here", event_type: "practice")
    assert_not(event1.valid?, "Event is valid without title")
  end

  test "Event is not saved without time" do
    event2 = Event.new(title: "First gig", place: "there", event_type: "show")
    assert_not(event2.valid?, "Event is valid without time")
  end

  test "Event is not saved without location" do
    event3 = Event.new(title: "First gig last rehearsal", time: Time.now(), event_type: "rehearsal")
    assert_not(event3.valid?, "Event is valid without location")
  end

  test "Event is not saved without type" do
    event4 = Event.new(title: "Learn you new set", time: Time.now(), place: "here")
    assert_not(event4.valid?, "Event is valid without type")
  end

end
