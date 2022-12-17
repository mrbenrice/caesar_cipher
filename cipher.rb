def get_key
    puts "Enter key: "
    key = gets.to_i
    return key
end

def get_string
    puts "Enter word(s)"
    input = gets.to_s
    return input
end

def transform_word
    key = get_key
    word = get_string
    input_to_numb = word.chars.map {|letter| letter.ord}
    numb_to_cipher = input_to_numb.map do |number| 
        if number >=97 && number <= 122
            number += key
            if number > 122
                until number >= 97 && number <= 122
                    number -= 26
                end
                number.chr
            end
            number.chr
        elsif number >= 65 && number <= 90
            number += key
            if number > 90
                until number >= 65 && number <= 90
                    number -= 26
                end
                number.chr
            end
            number.chr
        else
            number.chr
        end
    end
    puts (numb_to_cipher * "")
end
