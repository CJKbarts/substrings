def substrings(string, dictionary)
    words = string.downcase!.split(" ")
    result = dictionary.reduce(Hash.new(0)) do |hash, substring|
        words.each do |word|
            if word.include?(substring)
                hash[substring] += 1
            end
        end
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input = gets.chomp
puts substrings(input, dictionary).to_s