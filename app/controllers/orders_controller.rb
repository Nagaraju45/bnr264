class OrdersController < ApplicationController
  def index
    @orders = Order.where(:customer_id => params[:id])   
  end
  
  def show
    
    @customer_orders = @customer.orders
    
  end

  def new
    @order = Order.new
    @order.customer
    @customer = Customer.all
    
  end

  def edit
    
  end
  def create
  #  puts '='*100 
  #  puts order_params
  #  puts '='*100 
    @order = Order.new(order_params)
    @order.save
    redirect_to customer_orders_path(order_params[:customer_id])   
  end
  private
  def order_params
    params.require(:order).permit(:customer_id, :product, :quantity, :price)
  end
end
