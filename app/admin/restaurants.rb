# frozen_string_literal: true

# register
ActiveAdmin.register Restaurant do
  index do
    column :title
    column :description
    column :dishes_count do |product|
      product.dishes.count
    end
    actions
  end

  show do |restaurant|
    attributes_table do
      row :title
      row :description
    end

    panel 'Dishes' do
      table_for restaurant.dishes do |t|
        t.column :title
        t.column :dish_type
        t.column :ingredients
        t.column :description
        t.column :price
      end
    end
  end

  permit_params :title, :description
end
