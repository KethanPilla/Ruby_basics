#!/user/local/bin/ruby

#Name: Kethan Pilla
#Class: Cs410w
#Date: 03/04/2025
#Description: Simple ruby program to calculate tips on price.

choice = "Y"

#Source: Tutorials point(Ruby-Loops)
while choice == "Y" do
print "\nEnter price of the meal: "
price = gets.to_f

#Source: Tutorials point(Ruby-if/else)
if price < 0 then
    puts "The meal price cannot be negative."
else
    perTip10 = (10.0/100)*price
    perTip15 = (15.0/100)*price
    perTip20 = (20.0/100)*price
    
    puts "the 10% tip is #{"%.2f" %perTip10}"
    tot10 = perTip10 + price
    puts "the total with the meal and the 10% tip is #{"%.2f" %tot10}"
    puts "the 15% tip is #{"%.2f" %perTip15}"
    tot15 = perTip15 + price
    puts "the total with the meal and the 15% tip is #{"%.2f" %tot15}"
    puts "the 20% tip is #{"%.2f" %perTip20}"
    tot20 = perTip20 + price
    puts "the total with the meal and the 20% tip is #{"%.2f" %tot20}"
    puts "Would you like to continue 'Y' as Yes and 'N' for No"
    choice = gets.chomp.to_s
end
end
if choice == "N" then
    print "Have a nice day\n"
    exit
else
    print "Error:Wrong input exiting program\n"
end
