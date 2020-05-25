require_relative '../../lib/api/marvel_requests/characters.rb'
require_relative '../utils/id_character.rb'

describe '.characters' do
  before(:all) do
    @request = Characters.new
    @id_character = IdCharacter.new
  end

  context 'should list 5 characters' do
    it 'get characters' do
      get_characters_response = @request.get_characters

      expect(get_characters_response.code).to eq(200)
      expect(get_characters_response).to match_response_schema('characters')
    end
  end

  context 'should list specific character' do
    it 'get specific character' do
      get_ids = @id_character.sample_id_character
      get_user = @request.get_one_character(get_ids)

      expect(get_user.code).to eq(200)
      expect(get_user).to match_response_schema('specific_character')
    end
  end

  context 'should list comics of the characters' do
    it 'get_comics' do
      get_ids = @id_character.sample_id_character
      get_comics = @request.get_comics(get_ids)

      expect(get_comics.code).to eq(200)
      expect(get_comics).to match_response_schema('comics')
    end
  end
end
