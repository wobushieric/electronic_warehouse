class CustAddressController < ApplicationController
  def index
  	if user_signed_in?
  	  @address = CustAddress.where(:user_id => current_user.id).first
  	else
  	  redirect_to new_user_session_path
  	end
  end

  def new
    @cust_address = CustAddress.new
  end

  def creat
    @cust_address = CustAddress.new(first_name: params[:post][:first_name],
                                    last_name: params[:post][:last_name],
                                    address: params[:post][:address],
                                    city: params[:post][:city],
                                    province_id: params[:post][:province_id],
                                    postal_code: params[:post][:postal_code],
                                    user_id: current_user.id)

    respond_to do |format|
      if @cust_address.save
        format.html { redirect_to user_centre_path, notice: 'New address was successfully saved.' }
        format.json { render :show, status: :created, location: @cust_address }
      else
        format.html { render :new }
        format.json { render json: @cust_address.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @cust_address = CustAddress.where(:user_id => current_user.id).first
  end

  def update

    @cust_address = CustAddress.where(:user_id => current_user.id).update(first_name: params[:post][:first_name],
                                                                          last_name: params[:post][:last_name],
                                                                          address: params[:post][:address],
                                                                          city: params[:post][:city],
                                                                          province_id: params[:post][:province_id],
                                                                          postal_code: params[:post][:postal_code])

    redirect_to user_centre_path

  end

  def delete
    old_address = CustAddress.where(:user_id => current_user.id).first

    old_address.destroy

    redirect_to user_centre_path
  end
end
