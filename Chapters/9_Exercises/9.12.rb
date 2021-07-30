# Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number.

contacts = {
  "Joe Smith"=>{
  :email=>"joe@email.com", 
  :address=>"123 Main st.", 
  :phone=>"555-123-4567"}, 
"Sally Johnson"=>{
  :email=>"sally@email.com", 
  :address=>"404 Not Found Dr.", 
  :phone=>"123-234-3454"}
}

# Joe's email
p contacts["Joe Smith"][:email]

# Sally's phone number
p contacts["Sally Johnson"][:phone]