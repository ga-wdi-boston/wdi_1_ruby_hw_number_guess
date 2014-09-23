=begin
"I'm thinking of a number between 1 and 10..."
Write a Ruby program that generates a random number between 1 and 10, and
allows the user to guess what it is. The user only gets three guesses – but
to help them out, if they guess incorrectly, the program should tell them
whether the actual number is higher or lower than their guess.

If the user guesses correctly, the program should end with a congratulatory message.
If they run out of guesses, the program should tell them what the actual number was.

Specifications
=================================
This section clarifies the outline above into a list of criteria that you can check
your work against (hint: this could give you some ideas on breaking the problem into
discrete steps). If your program fulfills all the specs, you're done! Review your
code for refactoring opportunities, and check the section below for additional challenges.

Program generates a random number and prompts the user to guess it
Program tells the user whether a guess was correct or not
Program allows the user to guess again if they guess incorrectly
Program ends immediately if the user guesses correctly
Program ends and reveals the random number after three incorrect guesses
Program gives a "higher or lower" hint on an incorrect guess
Program outputs an error and does not use up a guess when an out-of-range number is entered
Repository has several logical commits with descriptive messages
Code uses correct indentation/style and descriptive variable names

Extra Challenges
====================================
Why always 10? Enhance your program to allow the user to specify a maximum number
before they start guessing. The number of incorrect guesses allowed should be scaled
appropriately (the exact logic is up to you) – giving someone only three tries to
guess a number between 1 and 500 isn't very fair! Make sure you tell the user how
many guesses they have left at each prompt.

=end

class RandomGuess

  attr_reader :max
  attr_reader :max_attempts
  attr_reader :random_num

  @@count = 1
  @@random_num

  def initialize(integer, max)
    @max = max
    @max_attempts = max / 3
    @@random_num = Random.new.rand(1..@max)
    setup(integer)
  end

  def setup(integer)
    checkguess(integer)
  end

  def checkguess(integer)
    if @@count >= @max_attempts && integer.to_i != @@random_num && integer.between?(1,@max)
      puts "You exceeded your attempts. The correct answer was #{@@random_num}\n"
      return
    elsif !integer.between?(1,@max)
      puts "That number is out of range. You have #{(@max_attempts - @@count) + 1} tries left. Try again: \n"
      guess = setup(gets.chomp.to_i)
    elsif integer < @@random_num && @@count <= @max_attempts
      @@count += 1
      puts "Your guess was too low, try a higher number. You have #{(@max_attempts - @@count) + 1} tries left. Try again:\n"
      guess = setup(gets.chomp.to_i)
    elsif integer > @@random_num && @@count <= @max_attempts
      @@count += 1
      puts "Your guess was too high, try a lower number. You have #{(@max_attempts - @@count) + 1} tries left. Try again:\n"
      guess = setup(gets.chomp.to_i)
    elsif integer == @@random_num && @@count <= @max_attempts
      print "Wicked pissah, you guessed right you SOB!!\n"
    end
  end
end

puts "Give a max:"
max = gets.chomp
puts "Guess the number between 1 and #{max}"
guess = RandomGuess.new(gets.chomp.to_i, max.to_i)

