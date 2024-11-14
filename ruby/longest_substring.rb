require "debug"

# def longest_substring(s)
#   return
#   result = {}
#   n = s.length
#   arr = s.split("")

#   n.times do |index|
#     substring = []

#     arr[index..-1].each do |char|
#       break if substring.include?(char)
#       substring << char
#     end

#     result[substring] = substring.length
#   end

#   result.values.max
# end

def length_of_longest_substring(s)
  return 0 if s.empty?

  max_length = 0
  char_index_map = {}
  start_index = 0

  s.each_char.with_index do |char, index|
    debugger
    if char_index_map.key?(char) && char_index_map[char] >= start_index
      start_index = char_index_map[char] + 1
    end

    char_index_map[char] = index
    current_length = index - start_index + 1
    max_length = [max_length, current_length].max
  end

  max_length
end

# p longest_substring("abcabcbb")
# p longest_substring("bbbbb")
p length_of_longest_substring("pwwkew")
