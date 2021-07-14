require './lib/joke.rb'
require 'pry'

RSpec.describe Joke do
  before(:each) do
    @joke = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  end

  describe 'joke' do
    it 'is an instance of Joke' do
      expect(@joke).to be_a(Joke)
    end

    it 'has an ID' do
      expect(@joke.id).to eq(22)
    end

    it 'has a setup' do
      expect(@joke.setup).to eq("Why did the strawberry cross the road?")
    end

    it 'has a punchline' do
      expect(@joke.punchline).to eq("Because his mother was in a jam.")
    end
  end
end
