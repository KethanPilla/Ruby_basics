#!/user/local/bin/ruby

#Name: Kethan Pilla
#Class: Cs410w
#Date: 03/04/2025
#Description: Create a simple program to calculate powers of given base upto 100,000

print "What is the base? "
base = gets.to_i
val = 0

0.upto(100000) do |item|
    val = base ** item
    if val < 100000 then
        puts "#{base} to the power #{item} is #{val}"
    else
        item = 100000
    end
end 
