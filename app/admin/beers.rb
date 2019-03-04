ActiveAdmin.register Beer do
  permit_params :name, :alcohol, :ibu, :price
end
