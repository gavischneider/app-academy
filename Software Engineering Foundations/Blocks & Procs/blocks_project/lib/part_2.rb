def all_words_capitalized?(arr_words)
    arr_words.all? {|word| word.capitalize == word}
end

# when none of the urls end in '.com', '.net', '.io', or '.org'

def no_valid_url?(urls_arr)
    not_valid = ['.com', '.net', '.io', '.org']
    not_valid.each do |nv|
        urls_arr.each do |url|
            if url.end_with?(nv)
                return false
            end
        end
    end
    return true
end


def any_passing_students?(students)
    students.any? do |student|
        grades = student[:grades]
        avg = grades.sum / grades.length * 1.0
        avg >= 75
    end
end

students = [
        { name: "Alvin", grades: [70, 50, 75] },
        { name: "Warlin", grades: [80, 99, 95] },
        { name: "Vlad", grades: [100] },
      ]

p any_passing_students?(students)