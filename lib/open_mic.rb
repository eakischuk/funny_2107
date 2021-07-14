require './lib/joke'
require './lib/user'

class OpenMic
  attr_reader :date, :location, :performers

  def initialize(information)
    @location = information[:location]
    @date = information[:date]
    @performers = []
  end

end
