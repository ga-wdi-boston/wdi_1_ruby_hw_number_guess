=begin
"I'm thinking of a number between 1 and 10..."

Write a Ruby program that generates a random number between 1 and 10, and
allows the user to guess what it is. The user only gets three guesses – but
to help them out, if they guess incorrectly, the program should tell them
whether the actual number is higher or lower than their guess.

If the user guesses correctly, the program should end with a congratulatory message.
If they run out of guesses, the program should tell them what the actual number was.

Instructions
=============================
These are mostly the same steps you'll follow for every assignment, so we won't repeat them much.

1. Fork this repo.
2. git clone your fork into your GA code directory.
3. cd into the newly-cloned directory.
4. Create a Ruby file – call it guess.rb or whatever you like.
5. In this file, write a program according to the outline above and specifications below.
    Try to break the problem down into small isolated steps: Each time you complete a step,
    make a Git commit with a descriptive message. Your program should always be working
    in each commit, though it might not be completely done.
6. When finished, git push your local changes back up to your fork.
7. Submit a Pull Request to the original repo. In the description field,
    tell us about any problems you encountered or known issues with your program
    (e.g. does it not fulfill all of the specs? which ones?).


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

don't spend more than 2 hours doing this activity
=end


class RandomGuess
  @@count = 1
  @@random_num = Random.new.rand(1..10)
  # puts @@random_num

  def initialize(integer)
    checkguess(integer.to_i)
  end

  def checkguess(integer)
    if @@count >= 3 && integer != @@random_num && integer.between?(1,10)
      puts "You exceeded your attempts. The correct answer was #{@@random_num}\n"
      return
    elsif !integer.between?(1,10)
      puts "That number is out of range. Try again: \n"
      guess = initialize(gets.chomp)
    elsif integer < @@random_num && @@count <= 3
      @@count += 1
      puts "Your guess was too low, try a higher number. Try again:\n"
      guess = initialize(gets.chomp)
    elsif integer > @@random_num && @@count <= 3
      @@count += 1
      puts "Your guess was too high, try a lower number. Try again:\n"
      guess = initialize(gets.chomp)
    elsif integer == @@random_num && @@count <= 3
      print "Wicked pissah, you guessed right you SOB!!\n"
    end
  end
end

print "Guess the number between 1 and 10\n"
guess = RandomGuess.new(gets.chomp)

