print "give me a number:"
number = gets.to_i
string = ""
if number % 3 == 0
    string += "Pling"
end

if number % 5 == 0
    string += "Plang"
end
if number % 7 == 0
    string += "Plong"
end
if string.empty?
    string = number
end
puts string