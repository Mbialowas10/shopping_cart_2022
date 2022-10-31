class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to cart.")
    id = params[:id].to_i
    session[:shopping_cart] << id # push id tonto the end of array
    redirect_to root_path
  end

  def destroy; end
end
