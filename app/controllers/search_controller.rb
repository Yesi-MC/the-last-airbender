class SearchController < ApplicationController 
  def index 
    nation_name = params[:nation].gsub("_", "+")

    @characters = SearchFacade.character_info(nation_name)
  end
end

