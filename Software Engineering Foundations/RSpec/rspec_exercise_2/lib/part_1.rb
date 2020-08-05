def partition(array, partition)
    result = [[],[]]
    array.each do |num|
        if num < partition
            result[0] << num
        else
            result[1] << num
        end
    end
    result
end


def merge(hash_1, hash_2)
    merged_hash = {}
    hash_2.each do |key, value|
        merged_hash[key] = value
    end
    hash_1.each do |key, value|
        if merged_hash[key] == nil
            merged_hash[key] = value
        end
    end
    merged_hash
end


def censor(sentence, array)
    upper = ['A', 'E', 'I', 'O', 'U']
    lower = ['a', 'e', 'i', 'o', 'u']
    res_sentence = ""
    sen_arr = sentence.split(" ")
    sen_arr.each do |word|
        if array.include?(word.downcase)
            # gsub will replace all vowels (listed in regex) with a '*'
            temp = word.gsub!(/[aeiouAEIOU]/,'*')
            res_sentence << temp + " "
        else
            res_sentence << word + " "
        end
    end
    # chomp will remove the trailing space
    res_sentence.chomp(" ")
end

def power_of_two?(num)
    result = Math.log2(num) % 1 == 0
end

