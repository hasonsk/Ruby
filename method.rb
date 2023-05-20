def calculate_value_1(x, y)
    p  x + y
end

def calculate_value_2(value = 'default', arr = [])
    puts value
    puts arr.sum
end

def calculate_value_3(x, y, *ortherValue)
    puts ortherValue
end


#Example   Method returning value
def calculate_value(x,y)
    p "x / y = #{x / y}"
end


def second_calculate_value(x,y)
    return puts " x / y = #{x / y}"
puts " End line second_calculate_value method"
end

def third_calculate_value(x,y)
    return puts " x / y = #{x / y}" if y > 0
    puts " Don't calculate because y <= 0"
end

def fourth_calculate_value(x,y)
    return puts " x / y = #{x / y}" if y > 0
end
   
# Class method and instance method

#Example
class Invoice
    # class method 1   : truy cap thong qua ten cua class
    def self.print_out
        "Printed out invoice"
    end
    # class method 2
    def Invoice.print_myname
        p "My name is Son"
    end
    # class method 3
    class << self
        def class_method_1
        end

        def class_method_2
        end
    end


    # instance method : phuong thuc the hien thong qua doi tuong
    def convert_to_pdf
        "Converted to PDF"
    end
end
puts "1.Execute class method"
puts Invoice.print_out
puts "2.Execute instance method"
puts Invoice.new.convert_to_pdf


# block
1.upto(10) {|x| puts x}
1.upto(10) do |x|
    puts x
end
1.upto(10)
# proc
def what_am_I(&block)
    block.class
end

puts what_am_I {}

square = Proc.new do |n|
    n ** 2
end
sqaure.call (2)

# lambda

square = lambda {|n| n ** 2}
puts " 2*2 = #{square.call(2)}"

# example 
def lambda_test
    lam = lambda{return}
    lam.call
    puts "end line of lambda_test method"
end

def proc_test
    proc = Proc.new{return puts "Return in proc"}
    proc.call
    puts "end line of proc_test method"
end
