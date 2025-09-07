def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  string.split('').reduce('') do |acc, char|
    lowercase = char.downcase
    if alphabet.include? lowercase
      target_index = alphabet.index(lowercase) + shift
      target_index -= alphabet.length if target_index > alphabet.length - 1
      acc + if char == char.upcase
              alphabet[target_index].upcase
            else
              alphabet[target_index]
            end
    else
      acc + char
    end
  end
end

# p caesar_cipher('What a string!', 5)
