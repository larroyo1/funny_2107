
class OpenMic
  attr_reader :location, :date, :performers

  def initialize(attributes)
    @location = attributes[:location]
    @date = attributes[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end

  def repeated_jokes?
    num_jokes = @performers.find_all do |user|
      user.jokes
    end
    num_jokes.count != num_jokes.uniq.count
  end

end
