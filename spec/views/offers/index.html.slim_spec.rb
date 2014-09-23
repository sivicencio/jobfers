require 'rails_helper'

describe "offers/index" do
  it 'renders a list of offers' do
    create(:offer_with_details)
    assign(:offers, Offer.paginate(page: 1))
    render
    expect(rendered).to have_selector('ul.offers li')
  end

  it 'renders a list of offers clickable' do
    create(:offer_with_details)
    assign(:offers, Offer.paginate(page: 1))
    render
    expect(rendered).to have_selector('ul.offers li a')
  end
end