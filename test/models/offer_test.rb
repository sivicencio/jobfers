require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  test "should not save offer without title" do
    offer = Offer.new
    assert_not offer.save
  end
end
