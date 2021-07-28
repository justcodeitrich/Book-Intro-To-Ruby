# Write a program that checks if the sequence of characters "lab" exists in the following strings. 
# If it does exist, print out the word.


def char_check(string)
  if string =~ /lab/
    puts string
    puts string =~ /lab/
    puts /lab/ =~ string # does order matter? They both give same output
  else
    puts "no 'lab' in #{string}"
  end
end

char_check("laboratory")
char_check("experiment")
char_check("Pans Labyrinth")
char_check("elaborate")
char_check("polar bear")