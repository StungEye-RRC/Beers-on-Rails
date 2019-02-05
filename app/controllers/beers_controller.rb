class BeersController < ApplicationController
  def index
    @beers = Beer.order(:price)
  end
  # So the @beers variable will be shared with
  # the app/views/beers/index.html.erb

  # GET /beers/:id
  def show
    @beer = Beer.find(params[:id])
  end
  # The @beer variable will be shared with
  # the app/views/beers/show.html.erb
end
