def number_generate
  correct_num = rand(10)
  puts "I'm thinking of a number...can you guess it?"
end

def get_number
  puts "Enter a guess"
  guess = gets.chomp.to_i
  puts guess
end
