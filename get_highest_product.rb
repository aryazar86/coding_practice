#Given an array_of_ints, find the highest_product you can get from three of the integers.
#The input array_of_ints will always have at least three integers.

def highest_product(array)
  highest_array = []
  array.combination(3).each do |c|
    final = 1
    c.each { |i| final *= i }
    highest_array.push(final)
  end

  puts highest_array.sort.last
end

highest_product([1,5,3,5,6,2,3,5,7,8])