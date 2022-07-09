# puts 'Input any color'
# arr = []
# while (color = gets.chomp)
#   arr.push(color)
#   puts 'Input another color or type "stop" to break'
#   break if color == 'stop'
# end
# arr.delete('stop')
# arr.uniq!.delete('')
# p arr

COLORS = {
  red: 'красный',
  orange: 'оранжевый',
  yellow: 'желтый',
  green: 'зеленый',
  blue: 'голубой',
  indigo: 'синий',
  violet: 'фиолетовый'
}.freeze

# adds method to hash global scope
module Color
  refine Hash do
    def red
      self[:red]
    end

    def orange
      self[:orange]
    end
  end
end

using Color

p COLORS.red
p COLORS.orange

p COLORS.keys
p COLORS.values
p COLORS.invert
