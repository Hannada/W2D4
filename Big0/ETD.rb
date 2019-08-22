def quad_my_min(arr)
  sorted = false 
  until sorted 
    sorted = true 
    (0...arr.length-1).each do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false 
      end
    end
  end
  arr.first 
end

#above method is quadratic my_min 

def linear_my_min(arr)
  # arr.inject do |min, ele|
  #   min > ele 
  # end
  # arr.first 

  min = arr.first 

  arr.each do |ele|
    min = ele if ele < min 
  end
  min 

end

#above is linear 

def largest_contiguous_subsum(arr)
  subs = [] # constant 
  
  #this whole chunk is n^3 
  (0...arr.length).each do |i1| # linear
    (i1...arr.length).each do |i2| # quadratic 
      sub = arr[i1..i2] # O(n) linear
      subs << sub
    end
  end

  sums = subs.map { |sub| sub.sum} # quadratic 
  sums.max # linear 

  # current_sum = subs.first.sum

  # subs.each do |sub|
  #  current_sum = sub.sum if sub.sum > current_sum
  # end

  # current_sum
end

def largest_contiguous_subsum2(arr)
  best_sum = arr.first
  current_sum = 0

  arr.each do |el|
    current_sum += el
    if current_sum > best_sum
      best_sum = current_sum
    end
    if current_sum < 0 
       current_sum = 0
    end
  end
  best_sum
end 









list2 = [2, 3, -6, 7, -6, 7]

p largest_contiguous_subsum2([-5, -1, -3]) # => 8 (from [7, -6, 7])

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

# p  linear_my_min(list)
