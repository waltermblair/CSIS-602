#Walter Blair

# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0
  arr.each do |x| sum += x; end;
  sum
end

def max_2_sum arr
  arr.sort!.reverse!
  if arr[1]
    return arr[0] + arr[1]
  elsif arr[0]
    return arr[0]
  else return 0
  end
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  else
    index = 0
    arr.each do |i| index+=1
        arr.drop(index).each do |j|
            return true if i+j==n
        end
    end
    return false
  end    
end

# Part 2
# References - rubular.com
def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return !s.nil? && (s[0] =~ /[a-zA-Z]/) && !'aeiouAEIOU'.include?(s[0])
end

def binary_multiple_of_4? s
  if s.length == 1
    return s == "0"
  else
    return s !~ /\D/ && s[-2..-1] == "00"
  end
end

# Part 3
# References - https://stackoverflow.com/questions/10459901/how-do-you-round-a-float-to-two-decimal-places-in-jruby
class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    
    def initialize(isbn, price)
        throw ArgumentError if isbn.empty? || price <= 0
        @isbn = isbn
        @price = price
    end
    
    def price_as_string()
        "$" + sprintf('%.2f', price) 
    end
end
