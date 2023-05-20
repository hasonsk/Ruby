# INTRODUCE
# A Hash is a collection of key-value pairs.


# CREATE HASH
# Using new class method
h = Hash.new      # => {}
# Using the literal
h = Hash["a":100, "b":200]  # => puts h ⇒ {:a=>100, :b=>200}
h1 = {a:200, b:300} # => puts h1 => {:a=>200, :b=>300}


# ACCESSING HASH
h = Hash["a": 100, "b": 200]
h[:a] # => 100
h[:c] # => nil
h.keys # => [:a, :b]
h.values # => [100, 200]

# CONVERTING TO HASH
# Using try_convert(obj) return hash or nil
Hash.try_convert({1=>2}) # => {1=>2}
Hash.try_convert "1=>2" # => ni

# EQUALITY HASHES
h = Hash["a": 100, "b": 200, "c": 300]
h1 = Hash["a": 100, "b": 200, "c": 300, "d": 400]
h2 = Hash["b": 200, "c": 300, "a": 100]
h3 = Hash["a": 100, "b": 200, "c": 400]
puts "h == h1 #=> #{h == h1}"
puts "h == h2 #=> #{h == h2}"
puts "h1 == h2 #=> #{h1 == h2}"
puts "h > h1 #=> #{h > h1}"
puts "h1 > h #=> #{h1 > h}"
puts "h1 != h #=> #{h1 != h}"
puts "h > h3 #=> #{h < h3}"
puts "h <= h3 #=> #{h <= h3}"
puts "h != h3 #=> #{h != h3}"

# ELEMENT ASSIGNMENT
h = {"a": 100, "b": 200}
h["a"] = 10 # => h ⇒ {"a"=>10, "b"=>200}
h["c"] = 300 # => h ⇒ {"a"=>10, "b"=>200, "c"=> 300}
h.store "d", 400 # => h ⇒ {"a"=>10, "b"=>200, "c"=> 300, "d"=>400}

# ITERATING OVER HASH
# each {| key, value | block}
h.each {|key, value| puts "#{key} is #{value}"}
# each_key {| key | block}
h.each_key {|key| puts key}
# each_value {| value | block}
h.each_value {|value| puts value}

# EXCEPT
# Returns a copy of self with entries removed for specified keys.

h = { a: 1, b: 2, c: 3 }
p h.except(:a) #=> {:b=>2, :c=>3}

# OTHER HASH METHODS
h.compact (!) 
h.any? 
h.empty?  
h.include? 
h.length  
h.merge(!)  
h.has_key? 
h.reject (!)  
h.has_value? 
h.select (!) 