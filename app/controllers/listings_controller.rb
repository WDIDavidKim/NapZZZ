class ListingsController < ApplicationController
  include AuthHelper
  include ApplicationHelper

  def index
    @listings = Listing.all
  end

  def show
    @listing = Listing.find_by_id(params[:listing_id])
  end

  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    @listing.user_id = session[:user_id]
    if @listing.save
      flash[:success] = "Your listing \"#{@listing.title}\" has been posted"
      redirect_to listing_path(@listing)
    else
      flash[:notice] = "Your listing could not be created: #{@listing.errors.full_messages.join(', ')}."
      redirect_to new_listing_path
    end
  end

  def edit
    @listing = Listing.find_by_id(params[:listing_id])
    auth_fail("edit other user's listing!", @listing) if !auth_route(@listing.user)
  end

  def show
    @listing = Listing.find_by_id(params[:listing_id])
  end

  def update
    set_listing
    if auth_route(@listing.user)
      if @listing.update(listing_params)
        flash[:success] = "#{@listing.title} was updated!"
        redirect_to listing_path
      else
        render :edit
      end
    else
      auth_fail("update other user's listing!", listing_path)
    end
  end

  def destroy
    set_listing
    if auth_route(@listing.user)
      @user = @listing.user
      @listing.destroy
      flash[:success] = "Your listing \"#{@listing.title}\" has been deleted"
      redirect_to "/"
    else
      auth_fail("delete other user's listings", listing_path)
    end
  end

private
    def listing_params
      params.require(:listing).permit(:title, :content, :image, :location)
    end

    def set_listing
      @listing = Listing.find_by_id(params[:listing_id])
    end
end
