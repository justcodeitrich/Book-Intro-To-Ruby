def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# This will return either 
# 1) "hello from inside the execute method" and an undefined error for block
# 2) it will print twice "Hello from inside the execute method!"

# Solution: No output. A proc is returned
# This requires a .call method on block to run. And when it runs it prints the message once

