require 'rails_helper'

RSpec.describe SearchFacade do 
  context "class methods" do 
    it "get characters info" do
      search = SearchFacade.character_info("fire+nation")

      expect(search).to be_a(Array) 
      expect(search.count).to eq(25) 
      expect(search.first).to be_a(Character)  
    end 
  end 
end 