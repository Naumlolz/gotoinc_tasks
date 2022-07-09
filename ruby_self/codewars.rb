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
