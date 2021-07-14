require './lib/joke'

class User
  attr_reader :name, :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(chuckle_words)
    @jokes << chuckle_words
  end

  def tell(user, joke)
    user.learn(joke)
  end

  def joke_by_id(id)
    @jokes.detect {|joke| joke.id == id}
  end
end
