# frozen_string_literal: true

# Crea el objeto Character
class Character
  attr_reader :name, :species, :home_world

  def initialize(name, species, home_world)
    @name = name
    @species = species
    @home_world = home_world
  end
end
