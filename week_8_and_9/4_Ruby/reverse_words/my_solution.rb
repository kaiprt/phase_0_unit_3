# U3.W8-9: Reverse Words


# I worked on this challenge by myself.

# 2. Pseudocode
=begin
1. create a class 'reverse_words' and
2. set it to an argument
3. The argument must take a string and
4. return the argument with all words backwords in the same order.
=end

# 3. Initial Solution
=begin
def reverse_words(string)
  new_string = string.split(/\s/).reverse.join(' ').reverse
  return new_string
end
=end

# 4. Refactored Solution
def reverse_words(string)
  return string.split(/\s/).reverse.join(' ').reverse
end





# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
  raise "Test failed!" unless yield
end

assert { reverse_words("open") == "nepo" }
assert { reverse_words("reverse this") == "esrever siht" }
assert { reverse_words("hello") == "olleh" }

# 5. Reflection
=begin
I found this a very simple challenge. It was easy and in return I brushed up on some regular expressions!
I feel confident with manipulating data in Ruby and found nothing tedious. Regarding my strategy I mainly 
focused on creating the solution by chaining together methods so I could save space and time.
=end