def sum_of_numbers(*args)
  arr = []
  arr.push(*args)
  arr.sum
end

puts sum_of_numbers(2, 3, 4, 5, 6, 7, 8, 9)
puts sum_of_numbers(20_889, 379, 45, 53, 26, 711, 823, 97)
