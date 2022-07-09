require 'date'
days = %w[Mon Tue Wed Thu Fri Sat Sun]
p days
blanks = Date.new(2021,7,1).wday - 1

blanks.times do
  days.push(' ')
end

days_in_month = Date.new(2021, 7, -1).day
days_in_month
day = 1

while day <= days_in_month
  days.push(day)
  day += 1
end 

unless (days.size % 7) == 0
 days.push(' ')
end 

days.join(', ')
new_arr = days.each_slice(7).to_a
 puts"Массив дней: #{new_arr}"

for i in 0...7
 
 for j in 0...new_arr.size
  print "  #{new_arr[j][i]}"
 end
 puts
end