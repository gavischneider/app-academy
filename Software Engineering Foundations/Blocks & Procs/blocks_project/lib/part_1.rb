def select_even_nums(arr)
    arr.select(&:even?)
end


def reject_puppies(arr)
    new_arr = arr.reject do |dog|
        dog['age'] < 3
    end
    new_arr
end


def count_positive_subarrays(array)
    array2 = []
    array.each do |arr|
        array2 << arr.inject(:+)
    end
    array2.count {|x| x > 0}
end


def aba_translate(word)
    new_word = ""
    vowels = 'aeiou'
    word.split("").each do |letter|
        if vowels.include?(letter)
            new_word << letter
            new_word << 'b'
        end
        new_word << letter
    end
    new_word
end


def aba_array(arr_words)
    arr_words.map {|word| aba_translate(word)}
end

p aba_array(["cat", "dog", "butterfly"])
