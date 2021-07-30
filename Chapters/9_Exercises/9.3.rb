arr = [1,2,3,4,5,6,7,8,9,10]

odd_num = arr.select do |x|
  if x.odd?
    x
  end
end

p odd_num
