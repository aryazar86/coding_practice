# Dash Insert II challenge (given a string, return a string with dashes between adjacent even numbers, and an asterisk between any adjacent odd numbers)

def dashify(num) 
  num_array = num.to_s.split('')
  num_array.each_with_index.map do |n, i|
    if num_array[i+1]
      if n.to_i % 2 == 0 and num_array[i+1].to_i % 2 == 0
        n += "-"
      elsif n.to_i % 2 != 0 and num_array[i+1].to_i % 2 != 0
        n+= "*"
      else
        n
      end
    else
      n
    end
  end
  
end

puts dashify(1223455) * ""