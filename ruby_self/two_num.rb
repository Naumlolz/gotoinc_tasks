print 'Enter first number'
num1 = gets.chomp.to_i

loop do
  print 'Enter second number'
  num2 = gets.chomp.to_f
  if num2 <= 0
    puts 'please enter positive number'
  else
    puts(num1 / num2)
    break
  end
end
