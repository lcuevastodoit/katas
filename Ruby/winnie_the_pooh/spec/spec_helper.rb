require 'rspec'
require 'httparty'
require 'json'
require 'ostruct'

# Cargar todas las clases de la carpeta app
Dir['./app/**/*.rb'].sort.each { |file| require file }

RSpec.configure do |config|
  # configuraciones adicionales si es necesario
end
