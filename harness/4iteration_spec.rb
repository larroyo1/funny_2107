require './spec/test_helper'
require './lib/joke'
require './lib/user'
require './lib/open_mic'

RSpec.configure do |config|
  config.default_formatter = 'doc'
end

RSpec.describe 'Iteration 4' do
  before :each do
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
    @sal = User.new("Sal")
    @ali = User.new("Ali")
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How do you keep a lion from charging?", "Take away its credit cards.")
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
  end

  it '1. OpenMic Instantiation' do
    expect(OpenMic).to respond_to(:new).with(1).argument
    expect(@open_mic).to be_an_instance_of(OpenMic)
  end

  it '2. OpenMic #location' do
    expect(@open_mic).to respond_to(:location).with(0).argument
    expect(@open_mic.location).to eq("Comedy Works")
  end

  it '3. OpenMic #date' do
    expect(@open_mic).to respond_to(:date).with(0).argument
    expect(@open_mic.date).to eq("11-20-18")
  end

  it '4. OpenMic #performers' do
    expect(@open_mic).to respond_to(:performers).with(0).argument
    expect(@open_mic.performers).to eq([])
  end

  it '5. OpenMic #welcome' do
    expect(@open_mic).to respond_to(:welcome).with(1).argument
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    expect(@open_mic.performers).to eq([@sal, @ali])
  end

  it '6. OpenMic #repeated_jokes?' do
    expect(@open_mic).to respond_to(:repeated_jokes?).with(0).argument
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    expect(@open_mic.repeated_jokes?).to eq(false)
    @ali.learn(@joke_1)
    expect(@open_mic.repeated_jokes?).to eq(true)
  end
end
