class SearchFacade 
  
  def self.character_info(nation_name)
    data = SearchService.list_characters(nation_name)
    data.map do |character|
      Character.new(character)
    end
  end
end