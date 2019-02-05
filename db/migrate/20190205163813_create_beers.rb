class CreateBeers < ActiveRecord::Migration[5.2]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :alcohol
      t.string :ibu
      t.decimal :price

      t.timestamps
    end
  end
end
