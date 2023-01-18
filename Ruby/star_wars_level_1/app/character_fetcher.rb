class CharacterFetcher
  def initialize(adapter)
    @adapter = adapter
  end

  def fetch(id)
    @adapter.fetch_character(id)
  end
end
