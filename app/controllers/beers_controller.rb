class BeersController < ApplicationController
  def index
    @beers = Beer.order(:price)
  end
  # So the @beers variable will be shared with
  # the app/views/beers/index.html.erb

  def show
  end
end
