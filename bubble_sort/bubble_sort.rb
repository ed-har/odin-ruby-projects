def bubble_sort(array)
  sorted = false
  until sorted
    has_sorted = false
    for idx in 1..array.length - 1 do
      prev = array[idx - 1]
      curr = array[idx]
      next unless prev > curr

      array[idx - 1] = curr
      array[idx] = prev
      has_sorted = true
    end
    sorted = true if has_sorted == false
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
[0, 2, 2, 3, 4, 78]
