class SearchController < ApplicationController
  def results
    @query = params[:q]
    @beers = Beer.where('name LIKE ?', "%#{@query}%")
  end
end
