def check_input(input)
  type = case input
         when Integer then 'Целое число'
         when String then 'Строка'
         when Float then 'Вещественное число'
         else 'Какой-то класс'
         end
  puts type
end

check_input(22)
check_input('yolo')
check_input(2.33)
