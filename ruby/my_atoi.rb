require "debug"

# def my_atoi(s)
#   result = []
#   leading_zero = true
#   digit_break = false

#   s.each_char do |char|
#     next if char == " "
#     if char == "0" && leading_zero
#       leading_zero = false
#       next
#     end
#     if !char.match?(/[0-9+-]/)
#       digit_break = true
#       next
#     end

#     break if digit_break

#     result << char
#   end

#   return 0 if result.empty?
#   result.join
# end

def my_atoi(s)
  return 0 if s.empty?

  s = s.lstrip # Remove leading whitespace

  sign = 1
  if s[0] == '-' || s[0] == '+'
    sign = -1 if s[0] == '-'
    s = s[1..-1] # Remove the sign character
  end

  result = 0
  s.each_char do |char|
    break if char < '0' || char > '9' # Stop if a non-digit character is encountered
    result = result * 10 + char.to_i
  end

  result *= sign

  # Handle integer overflow
  if result > 2**31 - 1
    return 2**31 - 1
  elsif result < -2**31
    return -2**31
  end

  result
end

# p my_atoi("42")
p my_atoi(" -042")
# p my_atoi("1337c0d3")
# p my_atoi("0-1")
# p my_atoi("words and 987")
