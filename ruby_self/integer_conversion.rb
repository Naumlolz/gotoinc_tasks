def to_binary(number)
  number.to_s(2).to_i
end

def to_8_bit(number)
  number.to_s(8).to_i
end

def to_16_bit(number)
  number.to_s(16).to_i
end

%i[first second third].map.with_index { |i, v| [i, v.next] }.to_h

puts %w[first second third].map.with_index { |i, v|
  [i.to_sym, "#{(i[0] + i[-2..-1]).capitalize} (#{v.next})"]
}.to_h

a = "Возьмите текст из этого задания и извлеките из него все слова,
  количество символов в которых больше 5. Подсчитайте количество слов и
  выведите их в алфавитном порядке."

a.split.map(&:downcase).select { |w| w.length > 5 }.sort

b = "Возьмите текст этого задания и извлеките из него все слова,
  которые начинаются с символа 'с'. Сформируйте из них список
  уникальных слов и выведите их в порядке увеличения количества символов в слове."

p b.split.map(&:downcase).select { |w| w[0] == 'с' }.map { |w|
  w.tr(',.', '')
}.sort_by(&:length)

w1 = %w[red orange yellow green gray indigo violet]
w2 = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]

p w1.zip(w2).to_h
