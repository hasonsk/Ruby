# CREATE ARRAY
# Using the literal constructor []
arr = [1, "two", 3.0] # => [1, "two", 3.0]
# Using class method
arr = Array.new # => []
Array.new [8, 9] #=> [8, 9]
Array.new 3 # => [nil, nil, nil]
Array.new 3, true # => [true, true, true]
Array.new 3, "hello" # => ["hello", "hello", "hello"]
# Other
animals = %w(monkey dog cat) # => ["monkey", "dog", "cat"]


# ACCESSING ARRAY
# using the [] method
arr = [1, 2, 3, 4, 5, 6]
arr[2] # ==> 3
arr[100] # ==> nil
arr[-3] # ==> 4
arr[2, 3] # ==> [3, 4, 5]
arr[0, 0] # ==> []
arr[1..4] # ==> [2, 3, 4, 5]
arr[1..-3] # ==> [2, 3, 4]
# Using other method
arr = [1, 2, 3, 4, 5, 6]
arr.at 0 # => 1
arr.first # => 1
arr.last # => 6
arr.take 3 # => [1, 2, 3]

# Get information about an array
numbers = ["one", "two", "three", "four"]
numbers.length # => 4
numbers.empty? # => false
numbers.include? "ten" # => false

# ARRAY MANIPULATION
arr = [1, 2, 3, 4]
arr.push 5 # => [1, 2, 3, 4, 5]
arr << 6 << 7 << 8 # => [1, 2, 3, 4, 5, 6, 7, 8]
a1 = [1]; a2 = [2, 3]; a3 = [4, 5, [6, 7]]
a = a1 << a2 << a3 # => [1, [2, 3], [4, 5, [6, 7]]]
a[1] # => [2, 3]
a[1][0] # => 2
a[2][2][0] # => 6
a.flatten # => [1, 2, 3, 4, 5, 6, 7]

# unshift will add new items to the beginning of an array
arr.unshift -1, 0 # => [-1, 0, 1, 2, 3, 4, 5, 6]
# With insert you can add a new element to an array at any position.
arr.insert 3, "apple" # => [0, 1, 2, 'apple', 3, 4, 5, 6]
# The method pop removes the last element in an array and returns it.
arr = [1, 2, 3, 4, 5, 6]
arr.pop # => 6
arr # => [1, 2, 3, 4, 5]
# To retrieve and at the same time remove the first item, use shift.
arr.shift # => 1
arr # => [2, 3, 4, 5]
To delete an element at a particular index.
arr.delete_at(2) # => 4
arr # => [2, 3, 5]

# ITERATING OVER ARRAY
arr = [1, 2, 3, 4, 5]
# Array has each method, which includes from Enumerable module.
arr.each {|e| puts e} # => print: 1 2 3 4 5
# Sometimes useful iterator is reverse_each which will iterate over the elements in the array in reverse order.
arr.reverse_each {|e| puts e} # => print: 5 4 3 2 1
# The map method can be used to create a new array based on the original array
arr.map {|a| 2 * a} # => [2, 4, 6, 8, 10]
# --> arr # => [1, 2, 3, 4, 5]
arr.map! {|a| a ** 2} # => [1, 4, 9, 16, 25]
# --> arr # => [1, 4, 9, 16, 25]

# OTHER ARRAY METHODS

arr.compact   # delete nil
arr.concat     
arr.index
arr.count 
arr.sample
arr.select

