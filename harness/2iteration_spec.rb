require './spec/test_helper'
require './lib/joke'
require './lib/user'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe "Iteration 2" do
  before :each do
    @sal = User.new("Sal")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
  end

  it '1. User Instantiation' do
    expect(User).to respond_to(:new).with(1).argument
    expect(@sal).to be_an_instance_of(User)
  end

  it '2. User #name' do
    expect(@sal).to respond_to(:name).with(0).argument
    expect(@sal.name).to eq('Sal')
  end

  it '3. User #jokes' do
    expect(@sal).to respond_to(:jokes).with(0).argument
    expect(@sal.jokes).to eq([])
  end

  it '4. User #learn' do
    expect(@sal).to respond_to(:learn).with(1).argument
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    expect(@sal.jokes).to eq([@joke_1, @joke_2])
  end
end
