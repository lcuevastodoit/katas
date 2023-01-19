# frozen_string_literal: true

#  Hace la petición via HTTParty
class Client
  def initialize(url)
    @url = url
  end

  def fetch
    response = ::HTTParty.get(@url)
    JSON.parse(response.body)
  end
end
