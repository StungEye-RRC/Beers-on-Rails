ActiveAdmin.register Beer do
  permit_params :name, :alcohol, :ibu, :price, :category_id, :image
end
