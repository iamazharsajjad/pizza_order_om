class OrdersController < ApplicationController
	def index
	 	@orders = Order.all
	end
	def new
		@order = Order.create!
		redirect_to order_path(@order)
	end
	
	def show
		@order = Order.find(params[:id])
	end
	
	def complete_order
    	@order = Order.find(params[:order_id])
    	if @order.update(completed: true)
    		redirect_to order_path(@order), notice: "Order was successfully updated."
    	end
  	end
end
