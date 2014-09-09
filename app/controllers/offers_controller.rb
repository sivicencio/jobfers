class OffersController < ApplicationController
  def index
    @offers = Offer.paginate(page: params[:page])
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def edit
    @offer = Offer.find(params[:id])
  end

  def update
    @offer = Offer.find(params[:id])
    respond_to do |format|
      if @offer.update(offers_params)
        format.html { redirect_to @offer, notice: 'Offer was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  private

  def offers_params
    params.require(:offer).permit(:title, :salary, :description)
  end
end
