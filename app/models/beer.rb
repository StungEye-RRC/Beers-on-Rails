class Beer < ApplicationRecord
  validates :name, :alcohol, :ibu, :price, presence: true
  validates :price, numericality: true
end
