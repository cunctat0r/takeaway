ActiveAdmin.register Dish do
  form partial: 'form'

  permit_params :restaurant_id, :title, :dish_type, :description, :ingredients, :price
end
