# Use Ruby's Array method delete_if and String method start_with? to delete all of the strings that begin with an "s" in the following array.

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if do |x|
  x.start_with?("s")
end

p arr
# Output - ["winter", "ice", "white trees"]
# Then recreate the arr and get rid of all of the strings that start with "s" or starts with "w".

arr.unshift("snow")
arr[3]= "slippery"
arr.push("salted roads")
arr << "white trees"

arr.delete_if do |x|
  x.start_with?("s") || x.start_with?("w")
end

p arr 
# Output - ["ice"]
# LS Solution
arr.delete_if { |str| str.start_with?("s") }

arr.delete_if { |str| str.start_with?("s", "w") }