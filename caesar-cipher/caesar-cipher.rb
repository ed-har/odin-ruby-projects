
def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  string.split('').reduce('') {|acc, char|
    lowercase = char.downcase
    if alphabet.include? lowercase 
     target_index = alphabet.index(lowercase) + shift
     target_index -= alphabet.length if target_index > alphabet.length - 1
     acc += (char == char.upcase) ? 
     alphabet[target_index].upcase : alphabet[target_index]
    else
     acc += char 
    end
  }
end

 p caesar_cipher("What a string!", 5)