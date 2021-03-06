ActiveAdmin.register Product do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  permit_params :name, :description, :price, :stock_quantity, :image, :product_id, :category_id

  form :html => { :multipart => true } do |f|
    f.inputs "Product" do
      f.input :category
      f.input :name
      f.input :price
      f.input :stock_quantity
      f.input :image, :as => :file
      f.input :description, :as => :text
    end
    f.actions
  end

end
