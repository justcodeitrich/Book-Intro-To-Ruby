arr = [1,2,3,4,5,6,7,8,9,10]

arr.select do |x|
  if x > 5
    puts x
  end
end

# Solution:

arr.each do |number|
  if number > 5
    puts number
  end
end
