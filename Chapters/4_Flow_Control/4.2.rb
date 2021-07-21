def method(param)
  if param.to_s.length > 10
  param.to_s.upcase

else
  param
end
end

puts method("hello there!")
puts method("less 10")
