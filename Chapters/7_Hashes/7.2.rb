# Look at Ruby's merge method. Notice that it has two versions. 
# What is the difference between merge and merge!? 
# Write a program that uses both and illustrate the differences.


puts "merge - returns a new hash"
puts " -------------------------------------------------- "
h1 = {'a' => 100, "b" => 200}
h2 = {'b' => 254, 'c' => 300}
puts "a1 before merge" + h1.to_s
puts "a2 before merge" + h2.to_s 
puts " ----------------------------- "
puts "h1.merge(h2)"
puts h1.merge(h2)
puts " ----------------------------- "
puts "h1 after merge" + h1.to_s
puts "h2 after merge" + h2.to_s 
puts " "
puts " "
puts " "
puts "merge! - mutates the calling hash"
puts " -------------------------------------------------- "
a1 = {'a' => 100, "b" => 200}
a2 = {'b' => 254, 'c' => 300}
puts "a1 before merge" + a1.to_s
puts "a2 before merge" + a2.to_s 
puts " ----------------------------- "
puts "a1.merge!(a2)"
puts a1.merge!(a2)
puts " ----------------------------- "
puts "a1 after merge" + a1.to_s
puts "a2 after merge" + a2.to_s 
