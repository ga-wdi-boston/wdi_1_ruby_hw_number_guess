class Number_Guess

  def initialize
    @correct_num = "correct_num"
  end

  def number_generate
    @correct_num = rand(10)
    puts "I'm thinking of a number...can you guess it?"
  end
end

my_game = Number_Guess.new
my_game.number_generate
