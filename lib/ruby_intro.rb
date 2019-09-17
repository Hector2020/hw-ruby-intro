# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0) { |result, element| result + element }
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    return arr.max + arr.sort[-2]
  end
end

def sum_to_n? arr, n
  if arr.length == 0 or arr.length == 1
    return false
  end

  if arr.combination(2).find { |x, y| x + y == n}
    return true
  else
    return false
  end

end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  if s =~ /\A(?=[^aeiou])(?=[a-z])/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  unless s.to_s.strip.empty?

    if s.to_i % 4 == 0 and s.count("a-zA-Z") == 0
      return true
    else
      return false
    end

  else
    return false
  end

end


# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn == '' or price <= 0
      raise ArgumentError.new("not allowed")
    end

    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end
end
