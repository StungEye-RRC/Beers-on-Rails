class Beer < ApplicationRecord
  belongs_to :category # By way of a category_id FK.

  validates :name, :alcohol, :ibu, :price, presence: true
  validates :price, numericality: true
end
