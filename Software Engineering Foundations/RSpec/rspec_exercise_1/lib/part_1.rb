def average(num_1, num_2)
    return (num_1 + num_2) / 2.0
end

def average_array(nums)
    avg = 0.0
    nums.each {|num| avg += num}
    avg /= nums.length
    return avg
end

def repeat(string, num)
    return string * num
end

def yell(string)
    return string.upcase + '!'
end

def alternating_case(string)
    flag = true
    temp = []
    newStr = string.split(" ")
    newStr.each do |word|
        if flag == true
            temp << word.upcase
            flag = !flag
        else
            temp << word.downcase
            flag = !flag
        end
    end
    res = temp.join(" ")
    return res
end

