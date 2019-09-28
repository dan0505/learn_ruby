# The program takes the line and stop that a user is getting on at and the line and stop that user is getting off at and prints the journey and the total number of stops for the trip in the console:

# plan_trip 'N', 'Times Square', '6', '33rd' # This is only a suggested function name and signature.

# # `puts` shows output similar to this:
# # "You must travel through the following stops on the N line: 34th, 28th, 23rd, Union Square."
# # "Change at Union Square."
# # "Your journey continues through the following stops: 23rd, 28th, 33rd."
# # "7 stops in total."

# All 3 subway lines intersect at Union Square, but there are no other intersection points. (For example, this means the 28th stop on the N line is different than the 28th street stop on the 6 line, so you'll have to differentiate this when you name your stops in the arrays.)
# Tell the user the number of stops AND the stops IN ORDER that they will pass through or change at.

$subway_map = {
    "N" => ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"],
    "L" => ["8th", "6th", "Union Square", "3rd", "1st"],
    "6" => ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"],
}

def middle_string(line, start_station, end_station)
    start_index = $subway_map[line].index(start_station)
    end_index = $subway_map[line].index(end_station)
    travel_string = ""
    if start_index > end_index
        for i in (start_index-1).downto(end_index+1)
            travel_string += $subway_map[line][i]+", "
        end
    else
        for i in (start_index+1).upto(end_index-1)
            travel_string += $subway_map[line][i]+", "
        end
    end
    return travel_string, (end_index-start_index).abs
end

if ARGV.length == 4
    start_line = ARGV[0]
    start_station = ARGV[1]
    end_line = ARGV[2]
    end_station = ARGV[3]
    puts "get on at #{start_line} line, #{start_station} station, get off at #{end_line} line, #{end_station} station"
    travel_stops = 0
    if start_line == end_line
        travel_string, stops = middle_string(start_line, start_station, end_station)
        travel_stops += stops
        puts "You must travel through the following stops on the #{start_line} line: #{travel_string}get off at #{end_station}."
    else
        travel_string_first_line, stops = middle_string(start_line, start_station, "Union Square")
        travel_stops += stops
        puts "You must travel through the following stops on the #{start_line} line: #{travel_string_first_line}Union Square."
        puts "Travel for #{stops} stops"
        puts "Change at Union Square to #{end_line} line."
        travel_string_second, stops = middle_string(end_line, "Union Square", end_station)
        travel_stops += stops
        puts "Your journey continues through the following stops: #{travel_string_second}get off at #{end_station}."
        puts "Travel for #{stops} stops"
    end
    puts "#{travel_stops} stops in total."
else
    puts "I didn't get your complete trip, use as follow:"
    puts "ruby subway_line.rb <start line> <start station> <end line> <end station>"
end


