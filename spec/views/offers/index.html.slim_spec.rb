require 'rails_helper'

describe "offers/index" do
  it 'renders a list of offers' do
    assign(:offers, Offer.paginate(page: 1))
    render
  end
end