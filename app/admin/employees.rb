ActiveAdmin.register Employee do
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

  permit_params :name, :description, :job_title, :image, :employee_id

  form :html => { :multipart => true } do |f|
    f.inputs "Employee" do
      f.input :name
      f.input :job_title
      f.input :image, :as => :file
      f.input :description, :as => :text
    end
    f.actions
  end

end
