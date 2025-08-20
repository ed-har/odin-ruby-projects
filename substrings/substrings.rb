def substrings (string, dictionary)
  lowercase = string.split(" ").map(&:downcase)
  lowercase.reduce(Hash.new(0)) { |acc, substr|
    dictionary.each  do |word|
      acc[word] += 1 if substr.include? word 
    end
    acc
  }
end
 
 
 
 
 
 
 
 
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
#{ "below" => 1, "low" => 1 }

return_val  = substrings("Howdy partner, sit down! How's it going?", dictionary)
expected_val =  { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

p return_val == expected_val
