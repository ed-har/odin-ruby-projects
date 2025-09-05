def palindrome(word)
  return true if word.empty? || word.length == 1
  return false if word[0] != word[-1]

  palindrome(word[1..-2])
end

def print_bottles(n)
  return 'ERROR' if n.negative?

  if n.zero?
    puts 'no more bottles of beer on the wall'
  else
    puts "#{n} bottles of beer on the wall"
    print_bottles(n - 1)
  end
end

def fibonacci(n)
  return 0 if n.zero?
  return 1 if [1, 2].include?(n)

  fibonacci(n - 1) + fibonacci(n - 2)
end

def flatten(value)
  return [] if value.empty?

  if value[0].instance_of? Array
    flatten(value[0]) + flatten(value[1..])
  else
    [value[0]] + flatten(value[1..])
  end
end

roman_mapping = {
  1000 => 'M',
  900 => 'CM',
  500 => 'D',
  400 => 'CD',
  100 => 'C',
  90 => 'XC',
  50 => 'L',
  40 => 'XL',
  10 => 'X',
  9 => 'IX',
  5 => 'V',
  4 => 'IV',
  1 => 'I'
}

def converter(value, roman_mapping)
  keys = helper(value, roman_mapping.keys)
  keys.map { |val| roman_mapping[val] }.join
end

def helper(value, mapping_keys)
  return [] if mapping_keys.empty? || value.zero?

  curr_numeral = mapping_keys[0]
  if value % curr_numeral == value
    helper(value, mapping_keys[1..])
  else
    [curr_numeral] + helper(value - curr_numeral, mapping_keys)
  end
end

def integer_to_roman(roman_mapping, number, result = '')
  return result if number == 0

  roman_mapping.keys.each do |divisor|
    quotient, modulus = number.divmod(divisor)
    result << (roman_mapping[divisor] * quotient)
    return integer_to_roman(roman_mapping, modulus, result) if quotient > 0
  end
end

p integer_to_roman(roman_mapping, 2242)

roman_mapping = {
  'M' => 1000,
  'CM' => 900,
  'D' => 500,
  'CD' => 400,
  'C' => 100,
  'XC' => 90,
  'L' => 50,
  'XL' => 40,
  'X' => 10,
  'IX' => 9,
  'V' => 5,
  'IV' => 4,
  'I' => 1
}

def roman_to_integer(roman_mapping, numeral, result = 0)
  return result if numeral == ''

  roman_mapping.keys.each do |roman|
    temp = 0
    temp += roman_mapping[roman] if roman == numeral[0, roman.length]
    return roman_to_integer(roman_mapping, numeral[roman.length..], result + temp) if temp > 0
  end
end

p roman_to_integer(roman_mapping, 'MCMD')
p roman_to_integer(roman_mapping, 'MMCCXLII')
