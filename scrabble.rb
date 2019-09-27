def score(letter)
    case letter.upcase
    when "A", "E", "I", "O", "U", "L", "N", "R", "S", "T"
        1
    when "D", "G"
        2
    when "B", "C", "M", "P"
        3
    when "F", "H", "V", "W", "Y"
        4
    when "K"
        5
    when "J", "X"
        8
    when "Q", "Z"
        10
    else
        0
    end
end

def scrabble_score(word)
    tmp_score = 0
    word.split('').each { |c|
        tmp_score += score(c)
    }
    tmp_score
end

print "What's the word: "
word = gets.chomp
score = scrabble_score(word)

puts "Scrabble Score for word #{word} is #{score}."