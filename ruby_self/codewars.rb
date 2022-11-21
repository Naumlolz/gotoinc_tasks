def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end

def hero(bullets, dragons)
  bullets / dragons.to_f >= 2
end

def check_for_factor(base, factor)
  (base % factor).zero?
end

def human_years_cat_years_dog_years(human_years)
  case human_years
  when 1
    [1, 15, 15]
  when 2
    [2, 24, 24]
  else
    [human_years, 24 + ((human_years - 2) * 4), 24 + ((human_years - 2) * 5)]
  end
end

def solution(nums)
  nums.nil? ? [] : nums.sort
end

def arr(num = 0)
  (0..(num - 1)).to_a
end

def count_chars(arr)
  arr.empty? ? {} : arr.chars.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
end

def problem(exs)
  exs.instance_of?(String) ? 'Error' : (exs * 50) + 6
end

def round_to_next5(num)
  return num if (num % 5).zero?

  rounded = num.round(-1)
  rounded > num ? rounded : rounded + 5
end

# logical upcase String method
class String
  def upcase?
    self == upcase
  end
end

def gimme(input_array)
  b = input_array.sort
  c = b[1]
  input_array.index(c)
end

def reverse_letter(string)
  string.gsub(/[^A-Za-z]/, '').reverse
end

def final_grade(exam, projects)
  return 100 if exam >= 90 || projects > 10
  return 90 if exam >= 75 && projects >= 5
  return 75 if exam >= 50 && projects >= 2

  0
end

def square(num)
  num**2
end

def between(arc, brc)
  (arc..brc).to_a
end

def pipe_fix(nums)
  (nums.first..nums.last).to_a
end

def powers_of_two(num)
  range = (0..num).to_a
  arr = []
  range.each do |e|
    i = 2**e
    arr.push i
  end
  arr
end

def anagram?(test, original)
  test.chars.map(&:downcase).join.chars.tally == original.chars.map(&:downcase).join.chars.tally
end

def test_even(num)
  num.ceil.even?
end

def digitize(num)
  num.to_s.chars.reverse.map(&:to_i)
end

def litres(time)
  time.floor / 2
end

def sum_str(alr, blr)
  (alr.to_i + blr.to_i).to_s
end

def min_max(lst)
  lst.minmax
end

def sequence_sum(begin_number, end_number, step)
  (begin_number..end_number).step(step).sum
end

def feast(beast, dish)
  beast[0] == dish[0] && beast[-1] == dish[-1]
end

def get_char(chr)
  chr.chr
end

def palindrome?(str)
  str.downcase == str.downcase.reverse
end

def bin_to_dec(str)
  str.to_i(2)
end

def people_with_age_drink(old)
  if old < 14
    'drink toddy'
  elsif old.between?(14, 17)
    'drink coke'
  elsif old.between?(18, 20)
    'drink beer'
  else
    'drink whisky'
  end
end

def mxdiflg(a11, a22)
  if a11.empty? || a22.empty?
    -1
  else
    a = (a11.max_by(&:length).size - a22.min_by(&:length).size).abs
    b = (a11.min_by(&:length).size - a22.max_by(&:length).size).abs
    [a, b].max
  end
end

def str_count(word, letter)
  word.count(letter)
end

def hello(name = 'World')
  "Hello, #{name.empty? ? 'World' : name.capitalize}!"
end

def how_much_i_love_you(nb_petals)
  arr = ['not at all', 'I love you', 'a little', 'a lot', 'passionately', 'madly', 'not at all']
  arr[nb_petals % 6]
end

def min_value(digits)
  digits.uniq.sort.join.to_i
end

def square_sum(numbers)
  numbers.map { |e| e**2 }.sum
end

def move(position, roll)
  (roll * 2) + position
end

def accum(str)
  counter = 0
  str.chars.map { |e| (e * counter += 1).capitalize }.join('-')
end

def remove(str)
  if str[-1] == '!'
    str.chop
  else
    str
  end
end

def plural(num)
  num != 1
end

def index(array, num)
  array[num] ? array[num]**num : -1
end

# def xor(arc, brc)
#   if (arc == true && brc == true) || (arc == false && brc == false)
#     false
#   else
#     true
#   end
# end

# def get_grade(s10, s20, s30)
#   avg = (s10 + s20 + s30) / 3
#   if avg.between?(90, 100)
#     'A'
#   elsif avg.between?(80, 89)
#     'B'
#   elsif avg.between?(70, 79)
#     'C'
#   elsif avg.between?(60, 69)
#     'D'
#   else
#     'F'
#   end
# end
