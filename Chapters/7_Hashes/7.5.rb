# What method could you use to find out if a Hash contains a specific value in it? 
# Write a program that verifies that the value is within the hash.

orange = {
  shape: 'round',
  color: 'orange',
  size: 'medium',
  season: 'winter'
}

if orange.has_value?('round')
  puts "value is in the hash"
else
  puts "value not in hash"
end
