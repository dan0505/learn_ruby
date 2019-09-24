p "What's your age?"
age = gets.to_i

if age >= 18
    puts "Please join have a drink!"
elsif age == 0
    puts "Invalid input!"
else
    puts "Go home."
end
