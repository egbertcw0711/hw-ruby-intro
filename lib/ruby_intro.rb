# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sum = 0 # corner case
	arr.each do |ele|
		sum = sum + ele
	end
	return sum
end

def max_2_sum arr
  # corner cases
  return 0 if arr.empty?
  return arr[0] if arr.size == 1

  arr_cp = arr.sort
  return arr_cp[-2] + arr_cp[-1]
end

def sum_to_n? arr, n
  my_hash = Hash.new
  arr.each { |x|
    res = n - x
    if my_hash.has_key?(x)
      return true
    else
      my_hash[res] = 1
    end
  }
  return false
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return false if s.empty?
  
  if "abcdefghijklmnopqrstuvwxyz".include? s[0].downcase
    return true if "bcdfghjklmnpqrstvwxyz".include? s[0].downcase
  end
  
  return false
end


def binary_multiple_of_4? s
  return false if s.empty?
  s.each_char { |c| 
    return false if c != "1" and c != "0"
  }
  
  if s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
    
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty?
    raise ArgumentError if price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    return "$%.2f"%@price
  end
end
