user_ans = "y" # initializes the answer of the user to 'y'.

while user_ans == "y"
	puts "Let's play!"
	print "Specify maximum boundary: " 
	max_num = gets.chomp.to_i # gets the user input for the maximum boundary.
	
	num = rand(1..max_num) # creates a random number according to specified maximum boundary.
	
	print "Guess a random number 1 to #{max_num}: " 
	guess = gets.chomp.to_i # gets the user guess for the random number.
	try = 1 # initializes the trial number for the user.
	if guess < (max_num + 1) && guess > 0 
		puts "You have #{((max_num * 3) / 10) - try} tries left."
	end
	
	while try < ((max_num * 3) / 10)
		if guess == num
			puts "The guess is correct, the number is #{num}."
			if try != ((max_num * 3) / 10) then break; end # if try is not equal to trial number it wil break the loop.
		elsif guess < num && guess < (max_num + 1) && guess > 0 
			print "Incorrect. Your guess is less than the random number. Guess it again: "
			guess = gets.chomp.to_i
			try += 1 # increments the number of trials' of user if they guessed wrong and try to guess it again.
			if guess > max_num || guess < 1 
				print "Your guess is out of range. Guess it again: " 
				guess = gets.chomp.to_i
			elsif
				puts "You have #{((max_num * 3) / 10) - try} tries left."
			end
		elsif guess > num && guess < (max_num + 1) && guess > 0
			print "Incorrect. Your guess is greater than the random number. Guess it again: "
			guess = gets.chomp.to_i
			try += 1 
			if guess > max_num || guess < 1 
				print "Your guess is out of range. Guess it again: " 
				guess = gets.chomp.to_i
			elsif guess != num
				puts "You have #{((max_num * 3) / 10) - try} tries left."
			end
		end
		# if the user put out of range numbers it will give an error message and ask for an input in the range.
		while guess > max_num || guess < 1 
			print "Your guess is out of range. Guess it again: " 
			guess = gets.chomp.to_i
			if guess < (max_num + 1) && guess > 0 
				puts "You have #{((max_num * 3) / 10) - try} tries left."
				break;
			end
		end
	end
	
	# if the player uses all the trials, it will output the random number created.
	if try == ((max_num * 3) / 10) && (guess < (max_num + 1) && guess > 0)
		puts "The random number was #{num}."
	end
	# at the end of the game, it asks to the player if he/she wants to play again.
	puts "Would you like to play it again? (y/n)" 
	user_ans = gets.chomp
end

# Cenk Yurtbilir
	