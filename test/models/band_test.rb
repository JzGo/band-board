require 'test_helper'

class BandTest < ActiveSupport::TestCase

  test 'Band is not saved if no name is provided' do
    band1 = Band.new(genre: "Pop")
    assert_not(band1.valid?, "Band is valid without a name")
  end
end
