# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

# Largest Prime Factor ----------------------------

def prime?(num)
    return false if num < 2

    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    return true
end

def largest_prime_factor(number)
    for i in (number).downto(1)
        if number % i == 0
            if prime?(i)
                return i
            end
        end
    end
end


# Unique Chars? -----------------------------------

def unique_chars?(string)
    hash = {}
    string.split("").each do |i|
        if hash.key?(i)
            return false
        else
            hash[i] = true
        end
    end
    return true
end


# Dupe Indices ------------------------------------

def dupe_indices(array)
    hash = {}
    array.each_with_index do |i, index|
        if hash.key?(i)
            hash[i] << index
        else
            hash[i] = []
            hash[i] << index
        end
    end

    final_hash = {}
    hash.each do |key, values|
        if hash[key].length > 1
            final_hash[key] = values
        end
    end
    final_hash
end


# Ana_Array ---------------------------------------

def ana_array(arr1, arr2)
    arr1.each do |ele|
        if not arr2.include?(ele)
            return false
        end
    end

    arr2.each do |ele|
        if not arr1.include?(ele)
            return false
        end
    end
    true
end
