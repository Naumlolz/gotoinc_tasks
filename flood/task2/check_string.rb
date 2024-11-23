# frozen_string_literal: true

# класс для проверки может ли строка быть представлена элементами массива
class CheckString
  attr_accessor :str, :arr

  def initialize(params)
    @str = params[:str]
    @arr = params[:arr]
  end

  def perform
    can_break_string?(str, arr)
  end

  private

  def can_break_string?(str, arr)
    arr.repeated_combination(2).any? { |el| el.join == str }
  end
end
