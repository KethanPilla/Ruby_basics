#!/usr/local/bin/ruby

print "Enter your name: "
name = gets.chomp
print "Enter your age: "
age = gets.to_i
months =age*12
puts "#{name} is #{months} months old"

