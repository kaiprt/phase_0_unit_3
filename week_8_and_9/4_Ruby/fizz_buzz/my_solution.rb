# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode
=begin
1. Define a method "super_fizzbuzz"
2. that takes an array as an argument and
3. returns a new array that will replace numbers
4. in multiples of 3 with "Fizz",
4. in multiples of 5 with "Buzz",
5. and multiples of 15 with "Fizzbuzz"
=end
# 3. Initial Solution
=begin
def super_fizzbuzz(array)
  array.map! { |num| 
    if(num % 15 == 0 )
      "FizzBuzz"
    elsif(num % 5 == 0 )
      "Buzz"
    elsif(num % 3 == 0)
      "Fizz"
    else
      num
    end
}
return array
end
=end


# 4. Refactored Solution
def super_fizzbuzz(array)
  array.map! { |num| 
    if(num % 15 == 0 )
      "FizzBuzz"
    elsif(num % 5 == 0 )
      "Buzz"
    elsif(num % 3 == 0)
      "Fizz"
    else
      num
    end
}
return array
end

# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
def assert
  raise "Error" unless yield
end

assert { super_fizzbuzz([1,2,3]) == [1, 2, "Fizz"] }
assert { super_fizzbuzz([1,2,5]) == [1, 2, "Buzz"] }
assert { super_fizzbuzz([1,2,15]) == [1, 2, "FizzBuzz"] }
super_fizzbuzz([30, 9, 20, 1]) # => ["FizzBuzz", "Fizz", "Buzz", 1]

# 5. Reflection
=begin
I found this challenge to relatively simple. I found the directions clear and had no trouble attempting to solve the challenge.
I am curious if there is a better way to refactor my code and I will continue to research and refine my solution. I had trouble 
at first because I set my if/else statement backwards (did % 3 then % 5 etc.) but I caught the error quickly.
=end