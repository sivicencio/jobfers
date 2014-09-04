class OffersController < ApplicationController
  def index
    @offers = Offer.paginate(:page => params[:page])
  end

  def show
    @offer = Offer.find(params[:id])
  end
end
