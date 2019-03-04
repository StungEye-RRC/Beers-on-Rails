class SearchController < ApplicationController
  def results
    @query = params[:query]
    @beers = Beer.where('name LIKE ?', "%#{@query}%")
  end
end
