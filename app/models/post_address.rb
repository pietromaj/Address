class PostAddress < ActiveRecord::Base
  
  def self.import(file)
    CSV.foreach(file.path) do |row|
      endereco = row
        PostAddress.create!(postcode: endereco[0], city: endereco[1], street: endereco[4], number: endereco[5], range: endereco[6], flat: endereco[7])
    end
  end
  
end
