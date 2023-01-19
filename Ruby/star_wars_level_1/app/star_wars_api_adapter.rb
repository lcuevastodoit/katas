# frozen_string_literal: true

# Adaptador para la API de Star Wars que permite obtener un objeto Character
class StarWarsAPIAdapter
  def initialize
    @base_url = 'https://swapi.dev/api/people'
  end

  def fetch_character(id)
    @full_url = "#{@base_url}/#{id}"
    character_response = related_request(@full_url)
    name, species, homeworld = character_response.values_at('name', 'species', 'homeworld')
    species = begin
      related_request(species.first)['name']
    rescue StandardError
      'Human'
    end
    homeworld = related_request(homeworld)['name']
    Character.new(name, species, homeworld)
  end

  def related_request(url)
    response = ::HTTParty.get(url)
    JSON.parse(response.body)
  end
end
