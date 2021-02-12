class SearchController < ApplicationController 
  def index 
    nation_name = params[:nation].gsub("_", "+")
    conn = Faraday.new("https://last-airbender-api.herokuapp.com")
    response = conn.get("api/v1/characters?affiliation=#{nation_name}&perPage=25")
    @characters = JSON.parse(response.body, symbolize_names: true )
  end
end

