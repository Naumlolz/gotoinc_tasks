require 'matrix'

a = %w[red yolo swag anton red yolo yolo black purple swag]

p a.map { |w| "#{w}(#{a.count(w)})" }.uniq.sort

def num_arr_asc_desc(number)
  [number].map { |num| (1...num).to_a + num.downto(1).to_a }.flatten
end

p num_arr_asc_desc(4)
p num_arr_asc_desc(6)

matrix = Matrix[[1, 2, 3], [4, 5, 6], [7, 8, 9]]
puts matrix.trace

(1..9).each_slice(3) { |arr| p arr }
