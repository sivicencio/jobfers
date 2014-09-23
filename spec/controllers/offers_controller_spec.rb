require 'rails_helper'

describe OffersController do
  describe "GET index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end

    it "renders the 'offers/index' view" do
      get :index
      expect(response).to render_template('offers/index')
    end

    it "assigns all offers as @offers" do
      get :index      
      expect(assigns(:offers)).not_to be_nil
    end
  end
end
