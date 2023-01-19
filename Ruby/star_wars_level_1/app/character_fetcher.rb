# frozen_string_literal: true

# Crea una clase que utiliza el adaptador
class CharacterFetcher
  def initialize(adapter)
    @adapter = adapter
  end

  def fetch(id)
    response = @adapter.fetch_character(id)
    p response
  end
end
