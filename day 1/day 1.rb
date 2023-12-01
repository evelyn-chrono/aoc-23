
def num_getter
    # strings1 = ["two1nine","eightwothree","abcone2threexyz","xtwone3four","4nineeightseven2","zoneight234","7pqrstsixteen"]
    # strings2 = ["two1nine","eightwothree","abcone2threexyz","xtwone3four","4nineeightseven2","zoneight234","7pqrstsixteen"]
    # strings3 = ["two1nine","eightwothree","abcone2threexyz","xtwone3four","4nineeightseven2","zoneight234","7pqrstsixteen"]
    def from_word(word)
        if word == 'one' 
            return '1'
        elsif word == 'two' 
            return '2'
        elsif word == 'three' 
            return '3'
        elsif word == 'four' 
            return '4'
        elsif word == 'five' 
            return '5'
        elsif word == 'six' 
            return '6'
        elsif word == 'seven' 
            return '7'
        elsif word == 'eight' 
            return '8'
        elsif word == 'nine' 
            return '9'
        elsif word == 'zero' 
            return '0'
        else return word
        end
    end
    for i in 0...strings1.length() do
        strings1[i] = strings1[i].scan(/1|2|3|4|5|6|7|8|9|0|one|two|three|four|five|six|seven|eight|nine|zero/)
        for j in 0...strings1[i].length() do
            strings1[i][j] = from_word(strings1[i][j])
        end
        strings1[i] = strings1[i][0]
        strings2[i] = strings2[i].reverse()
        strings2[i] = strings2[i].scan(/1|2|3|4|5|6|7|8|9|0|eno|owt|eerht|ruof|evif|xis|neves|thgie|enin|orez/)
        for j in 0...strings2[i].length() do
            strings2[i][j] = strings2[i][j].reverse()
            strings2[i][j] = from_word(strings2[i][j])
        end
        strings2[i] = strings2[i][0]
        strings3[i] = strings1[i]+strings2[i]
        strings3[i] = strings3[i].to_i
    end
    strings3.sum()
end