# class which shows day of week in the block
class Week
  def each(name, &block)
    block.call name
  end

  def outer(name, &block)
    each(name, &block)
  end
end

day = Week.new
str1 = day.outer('Monday', &:to_s)
str = day.outer(Time.now.strftime('%A').to_s, &:to_s)
puts str1
puts str
