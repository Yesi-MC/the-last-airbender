class Character
  attr_reader :name, 
              :allies,
              :enemies, 
              :affiliation, 
              :photo

  def initialize(data)
     @name = data[:name]
     @allies = data[:allies].join(", ")
     @enemies = data[:enemies].join(", ")
     @affiliation = data[:affiliation]
     @photo = data[:photoUrl]
  
  end 
end