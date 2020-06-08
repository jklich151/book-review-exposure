class Api::V1::SearchController < ApplicationController
  def index
    title = params[:title]
    search_facade = SearchFacade.new
    all_results = search_facade.all_results(title)
    render json: BookSerializer.new(all_results)
  end
end
