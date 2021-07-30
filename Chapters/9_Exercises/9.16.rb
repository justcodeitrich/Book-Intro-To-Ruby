# Challenge: In exercise 11, we manually set the contacts hash values one by one. 
# Now, programmatically loop or iterate over the contacts hash from exercise 11, 
# and populate the associated data from the contact_data array. 
# Hint: you will probably need to iterate over ([:email, :address, :phone]), 
# and some helpful methods might be the Array shift and first methods.


# Problem: Use a loop or iterate over the contacts hash to populate with values from contact_data
  # - In simple words, put in appropriate values into the contacts hash using a loop/iterator instead of manually adding like exercise 11 did.
  # - Is it asking me to loop over the contacts hash that resulted from solving exercise 11? or the one that is given with no hash values?
    # - I will assume that it's asking to use the hash with empty values (before solving exercise 11) 
# Examples: Exercise 11
  # Adding contact data to contacts - contacts["Joe Smith"][:email] = contact_data[0][0]
# Data Structure:
  # Input: 1 array, 1 hash
  # Output: 1 hash
  # Possible methods - .shift (removes element from beginning of array), .first (selects the first element of the calling array)

  # While coding - .each_key
# Algorithm
  # hash keys: :email, :address, :phone
    # How do I add hash keys as a value into an existing hash?
  # hash values: the arrays within contact data. 
  # I need to combine the hash key with contact_data and add it to the appropriate key in the contacts hash.
    # To add a key to a hash: 
    # hash_name[:key_to_add] = value_to_add
  # I will need conditional statements to decide which contact data goes with which name
  # I will need conditional statements to decide which of the hash keys (:email, :address, :phone) will pair with the contact_data's elements
  # I think I can use the format of manually adding a hash key as I did in exercise 11
    # contact_data[0][0] # => 'joe@email.com'
  # Hindsight: I need to iterate over each element in the contacts hash using a each or map
  # Code framework:
    # first sort by contacts key (the names)
    # second sort by the information (contact_data[0][0] = email, contact_data[0][1] = address, contact_data[0][2] = phone)
    # third add the hash value to contacts 
    # There will be nested if statements 

# Code
# 1st attempt - Completed

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
=begin
contacts.each_key do |key|
  if key == "Joe Smith"
     contacts["Joe Smith"][:email] = contact_data[0][0]
     contacts["Joe Smith"][:address] = contact_data[0][1]
     contacts["Joe Smith"][:phone] = contact_data[0][2]
  else 
     contacts["Sally Johnson"][:email] = contact_data[1][0]
     contacts["Sally Johnson"][:address] = contact_data[1][1]
     contacts["Sally Johnson"][:phone] = contact_data[1][2]
  end 
end

p contacts
=end


# Refactored + Bonus (additional hash key added)
# Note: I thought of adding "Joe Brown" as an entry but I don't know how to separate similar names.
  # The only identifying information in the contact_data is joe and sally as emails

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}, "James Bond" => {}}

contacts.each_key do |key|
  if key == "Joe Smith"
     contacts[key][:email] = contact_data[0][0]
     contacts[key][:address] = contact_data[0][1]
     contacts[key][:phone] = contact_data[0][2]
  else 
     contacts[key][:email] = contact_data[1][0]
     contacts[key][:address] = contact_data[1][1]
     contacts[key][:phone] = contact_data[1][2]
  end 
end

p contacts

# Solution
# - This solution assumes that we know what the index position of the email, address, and phone will be
  # It iterates over each element in the fields array and assigns it to the first element as shift repeatedly returns and removes the element in index 0

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone] - # array of symbols

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end

# Solution to bonus

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end