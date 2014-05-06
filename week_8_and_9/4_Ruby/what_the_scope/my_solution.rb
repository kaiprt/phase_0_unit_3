# U3.W8-9: What the Scope


# I worked on this challenge [by myself, with: ].

# 1. What are the problems in the error messages?



# 2. Original Code

$var_1 = 22
 
class Person
  @@var_2 # Uninitialized class variable is this an object that needs to be called globally?
  VAR_6 = "Ruby" # Should this be an instance variable? Why is this capitalized? Is it a constant?
 
  attr_reader :var_3, :var_4 # Why is this necessary?
 
  def initialize(var_5 = VAR_6)
    @var_3="Law of Demeter"  
  end
 
  def do_stuff(var_7=[1,2,3])
    var_7.each do |var_8|
      var_9 += var_8 + 2
    end
  end
end

# 3. Modified Code (with scope identified as comments)
=begin 
I am extremely confused with this challenge. The code here makes no sense.
The majority of these objectects don't need to exist for this code to run.
=end

class Person
  attr_reader :var_3, :var_4
  #Removed @@var_2 because it's value is and always will be nil.
  #changing VAR_6 to @var_6 so only this class can access it.
  @var_6 = "Ruby" #Intance

  def initialize(var_5 = @var_6) #var_5 is local @var_6 is instance.
    @var_3 = "Law of Demeter" #Instance
  end

  def do_stuff(var_7=[1, 2, 3]) #Local
    var_7.each do |var_8| #Local
      var_9 += var_8 + 2 #Local
    end
  end
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
#Thix challenge did not call for driver tests.

# 5. Reflection 
=begin
This was a very confusing challenge. I attempted to straighten things out while maintaining the
integrity of the code but I am not sure if this is was what DBC wanted. I feel comfortable modifying
code but I feel that this code REALLY made sense. I attempted my best to fix this and I will discuss
with other students about there solutions. I commented out the scope as well as some initial questions
I had with the code. 
=end