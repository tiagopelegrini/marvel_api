require_relative   '../../lib/api/marvel_requests/characters.rb'

class IdCharacter
    def get_id_character
        @marvel_requests = Characters.new
        list_characters = @marvel_requests.get_characters["data"]["results"]
        id_character  = (list_characters.map{|character| character["id"]})
    end
end