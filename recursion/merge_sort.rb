# frozen_string_literal: true

def merge_sort(array)
  return array if array.length == 1

  half = array.length / 2
  array_a = merge_sort(array[0..(half - 1)])
  array_b = merge_sort(array[half..])
  result = []

  loop do
    if array_a.empty? || array_b.empty?
      result += array_a.empty? ? array_b : array_a
      break
    end
    result << if array_a[0] < array_b[0]
                array_a.shift
              else
                array_b.shift
              end
  end
  result
end

p merge_sort([248, 192, 706, 719, 335])
p merge_sort([4, 2, 3, 1])
