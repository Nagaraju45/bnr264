class ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
   
  end

  def edit
    @product = Product.find(params[:id])
    # @product.save
    # redirect_to products_path 
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to products_path 
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to products_path
  end 


  private
  def product_params
    params.require(:product).permit(:name, :unit, :unit_price, :date)
  end
  
end
