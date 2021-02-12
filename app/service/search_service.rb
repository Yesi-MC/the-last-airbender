class SearchService 
   def self.list_characters(nation_name)
    response = conn.get("api/v1/characters?affiliation=#{nation_name}&perPage=25")
    parse_data(response)
  end

  private 

  def self.conn 
    Faraday.new("https://last-airbender-api.herokuapp.com")
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true )
  end

end