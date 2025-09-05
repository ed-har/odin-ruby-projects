def fibs(num)
  prev = 0
  curr = 1
  result = []
  (num + 1).times do
    result << prev
    temp = curr
    curr += prev
    prev = temp
  end
  result
end

p fibs(8)

def fibs_rec(num, value = [0, 1], result = [])
  return result if num < 0

  fibs_rec(num - 1, [value[1], value[0] + value[1]], result << value[0])
end

p fibs_rec(8)
