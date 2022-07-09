# class Foo
class Foo
  COLORS = {
    red: 'красный',
    orange: 'оранжевый',
    yellow: 'желтый',
    green: 'зеленый',
    blue: 'голубой',
    indigo: 'синий',
    violet: 'фиолетовый'
  }.freeze

  COLORS.each do |method, name|
    define_method method do
      name
    end
  end
end

foo = Foo.new
puts foo.red
puts foo.green
