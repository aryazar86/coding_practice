#You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
#Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

def get_products_of_all_ints_except_at_index(array)
 combos = []

  array.each_with_index do |a, index|
    temp = array.each_with_index.map do |i, mapindex|
      if index != mapindex
        i
      end
    end
    combos.push(temp.compact)
  end

 new_array = []
 (combos.length).times do |a|
  final = 1
  combos[a].each { |i| final *= i }
  new_array.push(final)
 end

 puts new_array.to_s

end

get_products_of_all_ints_except_at_index([1, 7, 3, 4])
get_products_of_all_ints_except_at_index([1, 0, 3, 4])
