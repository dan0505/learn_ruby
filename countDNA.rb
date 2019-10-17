if ARGV.length != 1
    puts "wrong input mate"
else
    string = ARGV[0]
    $count = {
        "A" => 0,
        "C" => 0,
        'G' => 0,
        'T' => 0,
    }
    $count_else = 0
    string.each_char { |c| 
        puts c
        
        if $count.key?(c.upcase)
            $count[c.upcase] += 1
        else
            $count_else += 1
        end
    }
end

puts $count
puts $count_else