# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  count = 0
  arr.each { |item|
    count += item
  }
  return count
  # YOUR CODE HERE
end

def max_2_sum arr
  max1 = arr.max
  if max1 == nil
    return 0
  end
  arr.delete_at(arr.index(max1))
  max2 = arr.max
  if max2 == nil
    return max1
  else
    return max1 + max2
  end
end

def sum_to_n? arr, n
  arr.each { |i|
    arr.each{ |j|
      if i+j == n && i != j
        return true
      end
    }
  }
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  comp = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
  if (!(s.empty?)) && (comp.include? s[0])
    return true
  end
  return false
end

def binary_multiple_of_4? s
  
  t = s.delete "10"
  if s.empty? || !(t.empty?)
    return false
  end
  
  n = s.to_i(2)
  if n % 4 == 0
    return true
  end
  
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    #if @isbn < 1
    #  return "$00" + to_s(@isbn)
    n = price.to_s.split('.')
    if n.size == 1
      n[1] = "00"
    elsif n[1].size > 2
      n[1] = n[1][0] + n[1][1]
    elsif n[1].size == 1
      n[1] = n[1] + "0"
    end
    
    return "$" + n[0] + "." + n[1]
  end
  
end
