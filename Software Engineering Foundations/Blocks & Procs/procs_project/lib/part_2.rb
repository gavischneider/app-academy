def reverser(string, &block)
    string = string.reverse
    block.call(string)
end

def word_changer(string, &block)
    new_str = ""
    arr = string.split(" ")
    arr.each do |word|
        new_str += block.call(word) 
        new_str += " "
    end
    new_str.delete_suffix(" ")
end


def greater_proc_value(num, proc1, proc2)
    a = proc1.call(num)
    b = proc2.call(num)
    if a > b
        return a
    else
        return b
    end
end
   

def and_selector(arr, proc1, proc2)
    new_arr = []
    arr.each do |num|
        a = proc1.call(num)
        b = proc2.call(num)
        if a and b
            new_arr << num
        end
    end
    new_arr
end


def alternating_mapper(arr, proc1, proc2)
    new_arr = []
    arr.each_with_index do |num, i|
        if i % 2 == 0
            new_arr << proc1.call(num)
        else
            new_arr << proc2.call(num)
        end
    end
    new_arr
end

proc_1 = Proc.new { |n| n / 2.0 }
proc_2 = Proc.new { |n| n * 1000 }
