require './spec/test_helper'
require './lib/joke'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe "Iteration 1" do
  before :each do
    @joke = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
  end

  it "1. Joke Instantiation" do
    expect(Joke).to respond_to(:new).with(3).argument
    expect(@joke).to be_an_instance_of(Joke)
  end

  it '2. Joke #id' do
    expect(@joke).to respond_to(:id).with(0).argument
    expect(@joke.id).to eq(1)
  end

  it '3. Joke #setup' do
    expect(@joke).to respond_to(:setup).with(0).argument
    expect(@joke.setup).to eq("Why did the strawberry cross the road?")
  end

  it '3. Joke #punchline' do
    expect(@joke).to respond_to(:punchline).with(0).argument
    expect(@joke.punchline).to eq("Because his mother was in a jam.")
  end
end
