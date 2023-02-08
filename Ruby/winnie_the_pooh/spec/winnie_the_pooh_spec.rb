require 'spec_helper'

RSpec.describe WinnieThePooh do
  let(:pooh) { WinnieThePooh.new }
  let(:history) { HistoryObserver.new }

  before do
    pooh.add_observer(history)
  end

  describe "#add_adventure" do
    it "adds an adventure to the list" do
      pooh.add_adventure("Hunting for honey", "Hundred Acre Wood", "2023-01-01")
      expect(pooh.adventures.count).to eq(1)
    end
  end

  describe "#list_adventures" do
    it "lists all the adventures" do
      pooh.add_adventure("Hunting for honey", "Hundred Acre Wood", "2023-01-01")
      pooh.add_adventure("Getting stuck in rabbit's hole", "Hundred Acre Wood", "2023-01-02")

      expect { pooh.list_adventures }.to output(/Hunting for honey.*Getting stuck in rabbit's hole/m).to_stdout
    end
  end
end


# pooh = WinnieThePooh.new
# history = HistoryObserver.new
# pooh.add_observer(history)
# pooh.add_adventure("Hunting for honey", "Hundred Acre Wood", "2020-01-01")
# pooh.list_adventures


# Necesitamos 
# class Adventure (value object)
# class WinnieThePooh (subject del patron Observer) necesita: require 'observer', include Observable
# add_observer, add_adventure, adventures, list_adventures, notify_observers
# class HistoryObserver (el observador) tiene un metodo update que reacciona a la notificacion del
# subject