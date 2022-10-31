class ProductsController < ApplicationController
  def index
    @products = Product.all
    session[:visit_count] ||= 0  # default value when the operator on the lHS is unset or nil is set
    session[:visit_count] += 1
    @visit_count = session[:visit_count]
  end

  def show
    @product = Product.find(params[:id])
  end
end
