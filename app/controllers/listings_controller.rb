class ListingsController < ApplicationController

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = session[:user_id]
    if @listing.save
      flash[:success] = "Your listing has been posted"
      redirect_to listing_path(@listing)
    else
      flash[:notice] = "Your listing could not be created: #{@listing.errors.full_messages.join(', ')}."
      redirect_to new_listing_path
    end
  end
end
