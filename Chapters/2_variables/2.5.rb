=begin
x = 0
3.times do
  x += 1
end
puts x

y = 0
3.times do
  y += 1
  x = y
end
puts x
=end

puts "The first example's puts x will result in 3. The second example's puts x will result in an error because it is outside the scope of the x within the method."
