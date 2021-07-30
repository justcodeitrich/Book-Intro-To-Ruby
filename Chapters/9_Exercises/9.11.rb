# Given the following data structures, write a program that copies the information from the array into the empty hash that applies to the correct person.
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Understand the problem
  # 1. The contact data array contains information that needs to be matched to the correct contacts in the contacts hash
  # 2. Expected output:
    #  {
    #    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
    #    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
    #  }

# Examples and test cases

# Data Structures
  # Input: 1 array and 1 hash
  # Output: 1 hash

# Algorithm
  # 1. Since I already have a hash with keys and empty values associated to the keys, I need to sort through the contact data and fill in the empty values
  # 2. What is the best way of sorting the contact data? 
    # a. I can use .select and choose by first name. Does .select work on arrays? Answer: Yes (Rubydocs)
    #*** b. As I coded I decided to switch from .select to .each method 
  # 3. Once I can select the array, I can add it to the contacts hash using the matching key

# Code

  contact_data.each do |x|
    if x.first.include?('joe')
      contacts["Joe Smith"] = x
    elsif x.first.include?('sally')
      contacts["Sally Johnson"] = x
    end
 
  end
  puts contacts

# Output from my solution


{"Joe Smith"=>["joe@email.com", "123 Main st.", "555-123-4567"], 
"Sally Johnson"=>["sally@email.com", "404 Not Found Dr.", "123-234-3454"]}


# Questions
 # - Can hash keys have hashes as values? Yes

# Solution from LS
contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone] = contact_data[0][2]
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]

p contacts

# Output from LS solution. 

{
  "Joe Smith"=>{
  :email=>"joe@email.com", 
  :address=>"123 Main st.", 
  :phone=>"555-123-4567"}, 
"Sally Johnson"=>{
  :email=>"sally@email.com", 
  :address=>"404 Not Found Dr.", 
  :phone=>"123-234-3454"}
}

# Learnings
  # My solution did not match the expected output because it didn't have hash keys as descriptions of each element in the contact_data
  # I can have nested hashes (have a hash key that has another hash key/value pair as a value)