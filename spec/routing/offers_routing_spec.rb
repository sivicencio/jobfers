require 'rails_helper'

describe OffersController do
  describe "routing" do
    it 'routes to /' do
      expect(get('/')).to route_to("offers#index")
    end

    it "routes to #index" do
      expect(get("/offers")).to route_to("offers#index")
    end

    it "routes to page 2 of #index" do
      expect(get("/offers/page/2")).to route_to("offers#index", page: '2')
    end

    it "routes to #show with id 1" do
      expect(get("/offers/1")).to route_to("offers#show", id: '1')
    end

    it "routes to #edit with id 1" do
      expect(get("/offers/1/edit")).to route_to("offers#edit", id: '1')
    end

    it "routes to #update with id 1" do
      expect(patch("/offers/1")).to route_to("offers#update", id: '1')
    end
  end
end