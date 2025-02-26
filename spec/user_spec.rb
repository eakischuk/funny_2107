require './lib/joke'
require './lib/user'
require 'pry'

RSpec.describe User do
  before(:each) do
    @user_1 = User.new("Sal")
    @user_2 = User.new("Ali")
    @joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")

  end
  describe 'user' do
    it 'is an instance of User' do
      expect(@user_1).to be_a(User)
    end

    it 'has a name' do
      expect(@user_1.name).to eq("Sal")
    end

    it 'starts without jokes' do
      expect(@user_1.jokes).to eq([])
    end

    it 'can learn jokes' do
      @user_1.learn(@joke_1)
      @user_1.learn(@joke_2)

      expect(@user_1.jokes).to eq([@joke_1, @joke_2])
    end

    it 'can be told jokes and learns them' do
      @user_1.learn(@joke_1)
      @user_1.learn(@joke_2)
      @user_1.tell(@user_2, @joke_1)
      @user_1.tell(@user_2, @joke_2)

      expect(@user_2.jokes).to eq([@joke_1, @joke_2])
    end

    it 'can find jokes by id' do
      @user_2.learn(@joke_1)
      @user_2.learn(@joke_2)

      expect(@user_2.joke_by_id(22)).to eq(@joke_1)
      expect(@user_2.joke_by_id(13)).to eq(@joke_2)
    end
  end
end
