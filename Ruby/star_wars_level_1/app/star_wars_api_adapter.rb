# frozen_string_literal: true

# Adaptador para la API de Star Wars que permite obtener un objeto Character
class StarWarsAPIAdapter
  def initialize
    @base_url = 'https://swapi.dev/api/people'
    @full_url = ''
  end

  def fetch_character(id)
    @full_url = "#{@base_url}/#{id}"
    character_response = fetch(@full_url)
    name, species, homeworld = character_response.values_at('name', 'species', 'homeworld')
    species = begin
      fetch(species.first)['name']
    rescue StandardError
      'Human'
    end
    homeworld = fetch(homeworld)['name']
    Character.new(name, species, homeworld)
  end

  def fetch(url)
    Client.new(url).fetch
  end
end
