require_relative '../../lib/api/marvel_requests/characters.rb'

describe 'characters' do
    before(:all) do
      @request = Characters.new 
    end
  context 'list 5 characters' do
    it 'get 5 characters' do
      get_characters_response = @request.get_characters(6)

      expect(get_characters_response.code).to eq(200)
      expect(get_characters_response).to match_response_schema('characters')
    end
  end
end