require "debug"

# def length_of_longest_substring_k_distinct(s, k)
#   return 0 if s.nil? || s.empty? || k == 0
#   return s.length if s.length < k

#   result = {}
#   left = 0
#   right = 0

#   while right < s.length do
#     current_substring = s[left..right]

#     if current_substring.chars.uniq.length == k
#       result[current_substring] = current_substring.length
#     else
#       while left < right && current_substring.chars.uniq.length > k
#         left += 1
#       end

#       result[current_substring] = current_substring.length
#     end

#     right += 1
#   end

#   result.values.max
# end

def length_of_longest_substring_k_distinct(s, k) # ChatGPT solution
  return 0 if s.nil? || s.empty? || k == 0

  max_length = 0
  char_counts = {}
  distinct_count = 0
  left = 0

  s.each_char.with_index do |char, right|
    char_counts[char] ||= 0
    char_counts[char] += 1

    # Increment distinct_count if this is a new distinct character
    distinct_count += 1 if char_counts[char] == 1

    # Slide the window if distinct_count exceeds k
    while distinct_count > k
      char_counts[s[left]] -= 1
      distinct_count -= 1 if char_counts[s[left]] == 0
      left += 1
    end

    p char_counts
    # Update max_length with the maximum valid substring length
    max_length = [max_length, right - left + 1].max
  end

  max_length
end

# def length_of_longest_substring_k_distinct(s, k)
#   return 0 if s.nil? || s.empty? || k == 0

#   # Initialize variables
#   max_length = 0
#   char_counts = Hash.new(0)
#   distinct_count = 0
#   left = 0
#   right = 0

#   # Iterate through the string
#   while right < s.length
#     # Increment count of current character in hash
#     debugger
#     char_counts[s[right]] += 1

#     # If this is a new distinct character, increment distinct_count
#     if char_counts[s[right]] == 1
#       distinct_count += 1
#     end

#     # Slide the window if distinct_count exceeds k
#     while distinct_count > k
#       char_counts[s[left]] -= 1
#       if char_counts[s[left]] == 0
#         distinct_count -= 1
#       end
#       left += 1
#     end

#     # Update max_length if applicable
#     max_length = [max_length, right - left + 1].max

#     # Move right pointer to the next character
#     right += 1
#   end

#   return max_length
# end

p length_of_longest_substring_k_distinct("eceba", 2)
# p length_of_longest_substring_k_distinct("a", 2)
# p length_of_longest_substring_k_distinct("aa", 2)
