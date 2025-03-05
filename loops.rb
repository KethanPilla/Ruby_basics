#!/usr/local/bin/ruby

# These are loops

4.times do puts "Hooray" end

4.times{puts "Ruby"}

1.upto(10) do |item|
    puts item
end

5.downto(1) {|num| puts num}

0.step(100,10) {|num| puts num}

x=3
y=5
puts "#{x} plus #{y} is #{x+y}"

puts x.to_s + " plus " + y.to_s+" is " + (x+y).to_s

