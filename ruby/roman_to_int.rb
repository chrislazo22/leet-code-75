require "debug"

# def roman_to_int(s)
#   result = 0
#   roman_map = {
#     "I" => 1,
#     "V" => 5,
#     "X" => 10,
#     "L" => 50,
#     "C" => 100,
#     "D" => 500,
#     "M" => 1000
#   }
#   reversed_string = s.reverse
#   skip_index = false

#   reversed_string.each_char.with_index do |char, index|
#     next if index == skip_index

#     unless (index == reversed_string.length - 1)
#       if roman_map[char] > roman_map[reversed_string[index + 1]]
#         result = result + (roman_map[char] - roman_map[reversed_string[index + 1]])
#         skip_index = index + 1
#         next
#       end
#     end

#     result = result + roman_map[char]
#   end

#   result
# end

def roman_to_int(s)
  # Create a hash table to map Roman numerals to integers
  roman_values = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }

  # Initialize the result variable
  result = 0

  # Iterate through the Roman numeral string
  s.each_char.with_index do |numeral, index|
    value = roman_values[numeral]

    # If the current numeral is less than the next numeral, it's a subtraction case
    debugger
    if (index < s.length - 1) && (roman_values[s[index + 1]] > value)
      result -= value
    else
      result += value
    end
  end

  # Return the final result
  result
end

# p roman_to_int("III")
# p roman_to_int("LVIII")
p roman_to_int("MCMXCIV") # 100
