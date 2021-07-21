puts "Pick a number between 0 and 100"
num = gets.chomp.to_i

if num < 0
  puts "You can't put in a negative number!"
elsif num >= 0 && num <= 50
  puts "Your number is between 0 and 50!"
elsif num >= 51 && num <= 100
  puts "Your number is between 51 and 100!"
else
  puts "Your number is above 100!"
end

#added num < 0 comparison after looking at solution
