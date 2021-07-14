require './spec/test_helper'
require './lib/joke'
require './lib/user'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe 'Iteration 3' do
  before :each do
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
  end

  it '1. User #tell' do
    expect(@sal).to respond_to(:tell).with(2).argument
    @sal.tell(@ali, @joke_1)
    @sal.tell(@ali, @joke_2)
    expect(@ali.jokes).to eq([@joke_1, @joke_2])
  end

  it '2. User #joke_by_id' do
    expect(@sal).to respond_to(:joke_by_id).with(1).argument
    expect(@sal.joke_by_id(2)).to eq(@joke_2)
  end
end
