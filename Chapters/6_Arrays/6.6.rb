# You run the following code...

# names = ['bob', 'joe', 'susan', 'margaret']
# names['margaret'] = 'jody'

# What is the problem and how can it be fixed?

=begin
 TypeError: no implicit conversion of String into Integer
  from (irb):2:in `[]='
  from (irb):2
  from /Users/username/.rvm/rubies/ruby-2.5.3/bin/irb:12:in `<main>'
=end

# I think this is an attempt to swap out 'margaret' for 'jody' 
# The problem is that inside the [] is supposed to be a number to reference to an index.
# It can be fixed by changing to names[3]='jody'