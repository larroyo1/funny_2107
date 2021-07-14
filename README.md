# OpenMic

### Setup

* Fork this Repository
* Clone YOUR fork
* Compete the activity below
* Push your solution to your fork
* Submit a pull request from your repository to the turingschool-examples repository
  * Make sure to put your name in your PR!

### Iteration 1

Use TDD to create a Joke class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/joke'
# => true

pry(main)> joke = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# => #<Joke:0x00007f84602e4190...>

pry(main)> joke.id
# => 22

pry(main)> joke.setup
# => "Why did the strawberry cross the road?"

pry(main)> joke.punchline
# => "Because his mother was in a jam."
```

### Iteration 2

Use TDD to create a User class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/joke'
# => true

pry(main)> require './lib/user'
# => true

pry(main)> user_1 = User.new("Sal")
# => #<User:0x00007fb71e1eb8d8...>

pry(main)> user_1.name
# => "Sal"

pry(main)> user_1.jokes
# => []

pry(main)> joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# => #<Joke:0x00007fb71da169f0...>

pry(main)> joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
# => #<Joke:0x00007fb71d8e0bd0...>

pry(main)> user_1.learn(joke_1)

pry(main)> user_1.learn(joke_2)

pry(main)> user_1.jokes
# => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]
```

### Iteration 3

Use TDD to update your User class so that it responds to the following interaction pattern:

```ruby
pry(main)> require './lib/joke'
# => true

pry(main)> require './lib/user'
# => true

pry(main)> user_1 = User.new("Sal")
# => #<User:0x00007fb71e1eb8d8...>

pry(main)> user_2 = User.new("Ali")
# => #<User:0x00007fb71e1a4348...>

pry(main)> joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# => #<Joke:0x00007fb71da169f0...>

pry(main)> joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
# => #<Joke:0x00007fb71d8e0bd0...>

pry(main)> user_1.learn(joke_1)

pry(main)> user_1.learn(joke_2)

pry(main)> user_1.tell(user_2, joke_1)

pry(main)> user_1.tell(user_2, joke_2)

pry(main)> user_2.jokes
# => [#<Joke:0x00007fb71da169f0...>, #<Joke:0x00007fb71d8e0bd0...>]

pry(main)> user_2.joke_by_id(22)
# => #<Joke:0x00007fb71da169f0...>

pry(main)> user_2.joke_by_id(13)
# => #<Joke:0x00007fb71d8e0bd0...>
```

### Iteration 4

Use TDD to create an OpenMic class that responds to the following interaction pattern:

```ruby
pry(main)> require './lib/open_mic'
# => true

pry(main)> require './lib/user'
# => true

pry(main)> require './lib/joke'
# => true

pry(main)> open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})
# => #<OpenMic:0x00007fe8fd9f5e00...>

pry(main)> open_mic.location
# => "Comedy Works"

pry(main)> open_mic.date
# => "11-20-18"

pry(main)> open_mic.performers
# => []

pry(main)> user_1 = User.new("Sal")
# => #<User:0x00007fe8fda12a00...>

pry(main)> user_2 = User.new("Ali")
# => #<User:0x00007fe8ff0dddc0...>

pry(main)> open_mic.welcome(user_1)

pry(main)> open_mic.welcome(user_2)

pry(main)> open_mic.performers
# => [#<User:0x00007fe8fda12a00...>, #<User:0x00007fe8ff0dddc0...>]

pry(main)> joke_1 = Joke.new(22, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
# => #<Joke:0x00007fe8fd892978...>

pry(main)> joke_2 = Joke.new(13, "How do you keep a lion from charging?", "Take away its credit cards.")
# => #<Joke:0x00007fe8fe19f250...>

pry(main)> user_2.learn(joke_1)

pry(main)> user_2.learn(joke_2)

pry(main)> open_mic.repeated_jokes?
# => false

pry(main)> user_1.learn(joke_1)

pry(main)> open_mic.repeated_jokes?
# => true
```
