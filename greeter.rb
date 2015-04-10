def user_name
  puts "What is your name"
  name = gets.chomp
  return name
end

def random_number_generator
  return rand(1..100)
end

def print_output (persons_name, lucky_number)
  puts "Hello " + persons_name + " your lucky number is " +
    lucky_number.to_s
  end

  name_of_person = user_name
  print_output(name_of_person, random_number_generator)
