def check_number(number)
  if number.instance_of?(Integer) && number.positive?
    'положительное'
  elsif number.instance_of?(Integer) && number.negative?
    'отрицательное'
  else
    'это не число'
  end
end

puts check_number(23)
puts check_number(-10)
puts check_number('yolo')
