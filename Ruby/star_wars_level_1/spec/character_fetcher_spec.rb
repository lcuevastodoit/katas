require 'spec_helper'

describe CharacterFetcher do
  describe '#fetch' do
    before do
      @mock_api_response = {
        'name' => 'Luke Skywalker',
        'species' => [{ 'name' => 'Human' }],
        'homeworld' => 'Tatooine'
      }
      @mock_api_url = 'https://swapi.dev/api/people/1'
      allow(HTTParty).to receive(:get).with(@mock_api_url)
                                      .and_return(OpenStruct.new(body: @mock_api_response.to_json))
    end

    it 'should return a character object with the correct attributes' do
      fetcher = CharacterFetcher.new(StarWarsAPIAdapter.new)
      luke = fetcher.fetch(1)
      expect(luke.name).to eq('Luke Skywalker')
      expect(luke.species).to eq('Human')
      expect(luke.home_world).to eq('Tatooine')
    end
  end
end
