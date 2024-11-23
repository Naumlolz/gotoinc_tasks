# frozen_string_literal: true

def sum_array(arr)
  return 0 if arr.nil? || arr.empty?

  max = arr.max
  arr.delete_at(arr.index(max))
  arr.delete(arr.min)
  arr.sum
end
