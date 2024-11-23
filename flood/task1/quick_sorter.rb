# frozen_string_literal: true

# Класс для быстрой сортировки
class QuickSorter
  attr_accessor :array

  def initialize(array:)
    @array = array
  end

  def perform
    quick_sort(array)
  end

  private

  def quick_sort(arr)
    return arr if arr.length <= 1

    pivot = arr.sample
    left = []
    right = []

    arr.each do |item|
      next if item == pivot

      item < pivot ? left.push(item) : right.push(item)
    end

    quick_sort(left) + [pivot] + quick_sort(right)
  end
end
