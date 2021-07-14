require './lib/joke'
require './lib/user'
require './lib/open_mic'
require 'pry'

RSpec.describe OpenMic do
  before(:each) do
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    @user_1 = User.new("Sal")
    @user_2 = User.new("Ali")
    @joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  describe 'Open Mic' do
    it 'is an instance of OpenMic' do
      expect(@open_mic).to be_a(OpenMic)
    end
  end
end
