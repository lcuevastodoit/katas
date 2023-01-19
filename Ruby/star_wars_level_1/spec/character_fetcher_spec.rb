require 'spec_helper'

RSpec.describe CharacterFetcher do
  describe '#fetch' do
    before do
      @mock_api_response = {
        'name' => 'Luke Skywalker',
        'species' => [],
        'homeworld' => 'https://swapi.dev/api/planets/1/'
      }
      @full_url = 'https://swapi.dev/api/people/1'
      allow(HTTParty).to receive(:get).and_call_original
    end

    it 'returns a character object with the correct attributes' do
      fetcher = CharacterFetcher.new(StarWarsAPIAdapter.new)
      luke = fetcher.fetch(1)
      check_luke(luke)
    end

    def check_luke(luke)
      expect(luke.name).to eq('Luke Skywalker')
      expect(luke.species).to eq('Human')
      expect(luke.home_world).to eq('Tatooine')
    end
  end
end
