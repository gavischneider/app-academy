# Monkey-Patch Ruby's existing Array class to add your own custom methods

class Array
    def span
        if self.length == 0
            nil
        elsif self.length == 1
            0
        else
            ordered = self.sort
            return ordered[-1] - ordered[0]
        end
    end

    def average
        if self.length == 0
            nil
        else
            self.sum / (self.length * 1.0)
        end
    end

    def median
        if self.length == 0
            return nil
        end
        middle = self.length / 2
        sorted = self.sort
        if sorted.length % 2 == 0
            return (sorted[middle - 1] + sorted[middle]) / 2.0
        else
            return sorted[middle]
        end
    end

    def counts
        res = Hash.new(0)
        self.each do |ele|
            res[ele] += 1
        end
        res
    end

    def my_count(ele)
        f = self.filter {|e| e == ele}
        f.length
    end

    def my_index(ele)
        self.each_with_index do |e, i|
            if e == ele
                return i
            end
        end
        return nil
    end

    def my_uniq
        hash = {}
        self.each {|e| hash[e] = 1}
        hash.keys
    end

    def my_transpose
        new_arr = []
        (0...self.length).each do |row|
            new_row = []
            (0...self.length).each do |col|
                new_row << self[col][row]
            end
            new_arr << new_row
        end
        new_arr
    end

end


arr_1 = [
          ["a", "b", "c"],
          ["d", "e", "f"],
          ["g", "h", "i"]
        ]
p arr_1.my_transpose


