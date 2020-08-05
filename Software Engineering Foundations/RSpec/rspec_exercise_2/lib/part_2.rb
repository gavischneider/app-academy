def palindrome?(string)
    rev = ""
    string.length.times do |i|
        rev.insert(i, string[-1-i].chr)
    end
    string == rev
end


def substrings(string)
    output = []
    (0...string.length).each do |i|
        (i...string.length).each do |j|
            output << string[i..j]
        end
    end
    output
end


def palindrome_substrings(string)
    substrings(string).select {|sub| palindrome?(sub) && sub.length > 1}
end