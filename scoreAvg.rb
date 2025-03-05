#!/user/local/bin/ruby

#Name: Kethan Pilla
#Date: 03/04/2025
#Class: Cs410w
#Description: A simple program to calculate total score average

avg = 0.0
score = 0

print "How many scores? "
numScores = gets.to_i

1.upto(numScores) do |item|
    print "Enter score ##{item}: "
    score = gets.to_i
    avg = avg + score
end
avg = avg/numScores
puts "Average is #{"%.1f" %avg} "
