def hipsterfy(word)
    for i in (0..word.length)
        if word[word.length - i] == 'a' || word[word.length - i] == 'e' || word[word.length - i] == 'i' || word[word.length - i] == 'o' || word[word.length - i] == 'u' 
            puts "VOWEL"
            word.slice!(word.length - i)
            return word
        end
    end
    return word
end

def vowel_counts(string)
    string = string.downcase
    hash = Hash.new(0)
    for i in (0..string.length)
        if string[i] == 'a' || string[i] == 'e' || string[i] == 'i' || string[i] == 'o' || string[i] == 'u'
            hash[string[i]] += 1
        end
    end
    return hash
end

def caesar_cipher(message, n)
    alphabet = ("a".."z").to_a
    new_message = ""
    message.each_char do |char|
        if alphabet.include?(char)
            old_index = alphabet.index(char)
            new_index = old_index + n
            new_message += alphabet[new_index % 26]
        else
            new_message += char
        end
    end
    return new_message
end
    




puts caesar_cipher("abc", 2)
