require './lib/joke'
require './lib/user'

class OpenMic
  attr_reader :date, :location, :performers

  def initialize(information)
    @location = information[:location]
    @date = information[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    set = @performers.map do |performer|
      performer.jokes
    end
    set.length == set.uniq.length
  end

end
