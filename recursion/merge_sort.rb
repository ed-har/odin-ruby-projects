def merge_sort(array)
  return array if array.length == 1

  midpoint = array.length / 2
  array_a = merge_sort(array[0..midpoint])
  array_b = merge_sort(array[(midpoint + 1)..])
  result = []

  until array_a.empty && array_b.empty
    if array_a[0] < array_b[0]

    end

  end
end

p merge_sort([248, 192, 706, 719, 335])
