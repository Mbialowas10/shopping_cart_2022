class CartController < ApplicationController
  def create
    logger.debug("Adding #{params[:id]} to cart.")
    id = params[:id].to_i

    unless session[:shopping_cart].include?(id)
      session[:shopping_cart] << id
      product = Product.find(id)
      flash[:notice] = " ➕ #{product.name} added to cart."
    end # push id tonto the end of array
    redirect_to root_path
  end

  def destroy; end
end
