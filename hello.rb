def demo_if_statement x = 1
    return p "x is grater than 2" if x >= 2
    return p "x is 1" if x <= 2 and x != 0

    p "I can't guess the number"
end

def check_max a, b
    res = (a > b) ? a : b
    p res
end

def check_x x 
    unless x >= 2
        puts "x is less than 2"
    else
        puts " x is greater than 2"
    end
end


$var = 1
puts "1 -- Value is set" if $var 
puts "2 -- Value is set" unless  $var

arr = [1, 2]
puts "arr is not empty" unless arr.empty
puts "arr is empty" if arr.any?

$age = 5
case $age
when 0..2
    p "baby"
when 3..6
    p "little child"
when 7..12
    p "child"
when 13..18
    p "youth"
else
    p "adult"
end

config = {db: {user: 'admin', password: 'abc123'}}

case config
in db: {user:} 
    puts "Connect with user '#{user}'"
in connection: {username: }
    puts "Connet with user '#{username}'"
else
    puts "Unrecognized structure of config"
end
