def s1(count)
    sum = 0
    count.times{ |index| 
        if index.even?
            sum += 1
        else
            sum -= 1
        end
    }
    sum
end

def s2(count)
    (1..count).sum
end


puts s1(5)
puts s2(5)