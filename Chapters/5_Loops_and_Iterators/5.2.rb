x = " "

while x != "STOP" 
  puts "Type anything to continue, type STOP to stop"
    x = gets.chomp
  if x == "STOP"
    puts "STOPPED!"
  end
end

# - Solution given
=begin
x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end
=end
