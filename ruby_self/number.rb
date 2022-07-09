def get_max_number(num1, num2, num3)
  arr = [num1, num2, num3]
  return arr.max if arr.each { |i| i.instance_of?(Integer) }
end

puts get_max_number(226, 312_312_3, 5)
