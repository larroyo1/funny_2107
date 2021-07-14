require 'rspec'
require './lib/joke'

RSpec.describe Joke do

  context 'initialize' do
    joke = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    it 'exists with attributes' do
      expect(joke).to be_a(Joke)
      expect(joke.id).to eq(22)
      expect(joke.setup).to eq("Why did the strawberry cross the road?")
      expect(joke.punchline).to eq("Because his mother was in a jam.")
    end
  end

end
