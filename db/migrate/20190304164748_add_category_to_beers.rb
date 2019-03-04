class AddCategoryToBeers < ActiveRecord::Migration[5.2]
  def change
    add_reference :beers, :category, foreign_key: true
  end
end
