require 'rails_helper'

describe OffersController do
  describe "routing" do

    it "routes to #index" do
      expect(get("/offers")).to route_to("offers#index")
    end

    it "routes to #show with id 1" do
      expect(get("/offers/1")).to route_to("offers#show", id: '1')
    end
  end
end