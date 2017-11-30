class ChargeController < ApplicationController
  def new
    cust_address = CustAddress.where(:user_id => current_user.id).first
    recieved_status = OrderStatus.where(:name => "Received").first

    new_order = Order.create(province_id: cust_address.province_id,
    	                     user_id: current_user.id,
    	                     order_status_id: recieved_status.id,
    	                     cust_name: "#{cust_address.first_name} #{cust_address.last_name}",
    	                     shipping_address: "#{cust_address.address}, #{cust_address.city}")

    session[:cart].each do |product_id, qty|
      product = Product.where(:id => product_id).first

      new_line_item = LineItem.create(qty: qty,
      	                              price: product.price,
      	                              product_id: product.id,
      	                              order_id: new_order.id)
    end

    session.delete(:cart)

  	redirect_to cart_path
  end

  def charge
  end
end
