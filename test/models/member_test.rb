require 'test_helper'

class MemberTest < ActiveSupport::TestCase

  test "Member is not saved if email not provided" do
    member1 = Member.new(memberid: "Mel", password: "12344321")
    assert_not(member1.valid?, "Member is valid without email")
  end

  test "Member is not saved if memberid to provided" do
    member2 = Member.new(email: "member2@example.com", password: "12344321")
    assert_not(member2.valid?, "Member is valid without membername")
  end

  test "Member is not saved if password not provided" do
    member3 = Member.new(memberid: "Mel", email: "member3@example.com")
    assert_not(member3.valid?, "Member is valid without password")
  end
end
