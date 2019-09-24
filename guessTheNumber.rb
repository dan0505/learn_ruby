while true
    number = rand(1..10)
    p "Please guess a number between 1 to 10 (inclusive)"
    user_number = gets.to_i
    while user_number != number
        p "Please guess again! a number between 1 to 10 (inclusive)"
        user_number = gets.to_i
    end
    p "The random number is #{ number } you guessed it!"
    p "Do you want to play again?[y/n]"
    user_input = gets.chomp.downcase
    if user_input == 'n'
        p "Thanks for playing!"
        break
    
    end
end
