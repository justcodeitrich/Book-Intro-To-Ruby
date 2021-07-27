# Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. 
# Then write a program that does the same thing except printing the values. 
# Finally, write a program that prints both.

orange = {
  shape: 'round',
  color: 'orange',
  size: 'medium',
  season: 'winter'
}
puts "Keys only"
orange.each_key {|k| puts "#{k}"}
puts " "
puts "Values only"
orange.each_value {|v| puts "#{v}"}
puts " "
puts "Keys and Values"
orange.each {|k,v| puts "#{k}: #{v}"}