require_relative '../../lib/api/marvel_requests/characters.rb'

class IdCharacter
  def initialize
    @marvel_requests = Characters.new
  end

  def get_id_character
    list_characters = @marvel_requests.get_characters["data"]["results"]
    id_character = list_characters.map { |character| character["id"] }
  end

  def sample_id_character
    self.get_id_character.sample
  end
end
