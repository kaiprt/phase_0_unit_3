# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. John Quigley
# 2. Kai Prout
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to display list
# As a user, I want to add item
# As a user, I want to remove an item
# As a user, I want to check off item
# As a user, I want to incomplete/complete lists
# As a user, I want to specify quantity
 
# Pseudocode
# Create a class, called grocery_list 
# Create an initialized method, equal to an argument, that takes groceries
#  Within method, has 2 arrays, completed & incompleted 
#   Where the argument is shovled into the complete array
# Create method dislay list, return current list's
# Create another method add item, set to argument item_added
#  Shovled item_added into the incomplete array
# Create another method remove item, set to argument item_removed
# Create another method incomplete_complete, set to argument item_list

 
# Your fabulous code goes here....

class GroceryList
class GroceryList
  
  def initialize(groceries)
    @incomplete = []
    @incomplete << groceries
    @incomplete.flatten!
    @complete = []
    
  end

  def add(item)
    @incomplete << item
    return "#{item.capitalize} was added to list!"
  end

  def remove(item)
    @incomplete.delete(item) { "not found" }
    return "#{item.capitalize} was removed to list!"    
  end

  def display
      puts "Incomplete Items:"
      @incomplete.each { |i| puts i.capitalize }
      puts "<------------------>"
      puts "Completed Items:"
      @complete.each { |i| puts i.capitalize }
    return "All items are displayed!"
  end

  def checkoff(item)
    item = @incomplete.delete(item)
    @complete << item if item != nil
  end
  
end



# DRIVER CODE GOES HERE. 
def assert
  raise "Alert Fail!" unless yield
end

groceries = %w(bannas apple potatoes)
grocery = GroceryList.new(groceries)
grocery.add(oranges)
assert {grocery.display == "All items are displayed!" }
grocery.remove(oranges)
assert {grocery.display == "All items are displayed!" }
grocery.checkoff(apple)
assert {grocery.display == "All items are displayed!" }
assert {grocery.add(juice) == "Juice was added to list!" }



# Future Idea's
=begin
  - We thought of turning the Array's into Hashes to count for quantity
  - Also thought of If/Else statements for when items are duplicated
=end

# Reflection
=begin 
  This challenge was pretty simple and I felt that my partner and I communicated very well throughout the challenge. We were able to 
develop solutions swiftly and we wrote clear and consise code. The only thing I wish we did was use hashes instead of array's. This 
would allow us to utilize the "Key:Value" system in order to set quantities to items. Rick was a great moderator and only helped us 
when needed. Our strategy utilized two array's one simulated an "incomplete" list and the other simulated a "complete" list. When 
an item was checked off (.checkoff) it would be "shoveled" into the @complete array. I felt extremely confident with this challenge.
=end