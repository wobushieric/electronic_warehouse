class OrderController < ApplicationController
  def view
  	@line_items = LineItem.where(:order_id => params[:order_id])
  end
end
