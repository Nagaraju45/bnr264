class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find_by_id(params[:id])
    @customer_orders = @customer.orders
    
  end

  def new
    @customer = Customer.new
  end
  
  def create
    @customer = Customer.new(customer_params)
    @customer.save
    redirect_to customers_path 
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to customers_path
  end 

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :mobile, :address)
  end
end
