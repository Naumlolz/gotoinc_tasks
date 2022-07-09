# translate numbers to roman numbers
module RomanNumbers
  def to_roman
    @@arabic = self
    @@roman = ''
    @@a2r = []
    @@symbol = %w[I V X L C D M]

    for i in 0..2 do
      devide(5)
      devide(2)
      k = 2 * i
      if @@a2r[k] == 4
        tmp = @@a2r[k + 1]
        @@roman = @@symbol[k] + @@symbol[k + 1 + tmp] + @@roman
      else
        @@roman = (@@symbol[k + 1] * @@a2r[k + 1]) + (@@symbol[k] * @@a2r[k]) + @@roman
      end
    end
    @@roman = (@@symbol[-1] * @@arabic) + @@roman
  end

  def devide(num)
    @@a2r <<  (@@arabic % num)
    @@arabic /= num
  end
end

# class integer
class Integer
  include RomanNumbers
end

puts 5.to_roman
puts 99.to_roman
