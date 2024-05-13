ActiveAdmin.register Dish do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :short_name, :description, :price, :dish_image, :category_id

  remove_filter :dish_image_attachment, :dish_image_blob
  #
  # or
  #
  # permit_params do
  #   permitted = [:short_name, :description, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form do |f|
    f.inputs do
      f.input :short_name
      f.input :price
      f.input :description
      f.input :category_id
      f.input :dish_image, as: :file
    end
    f.actions
  end
end
