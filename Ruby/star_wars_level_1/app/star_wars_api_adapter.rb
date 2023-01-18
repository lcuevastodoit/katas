# frozen_string_literal: true

# Adaptador para la API de Star Wars que permite obtener un objeto Character
class StarWarsAPIAdapter
  def initialize
    @base_url = 'https://swapi.dev/api/people'
  end

  def fetch_character(id)
    response = HTTParty.get("#{@base_url}/#{id}")
    json = JSON.parse(response.body)
    Character.new(json['name'], json['species'].first['name'], json['homeworld'])
  end
end
