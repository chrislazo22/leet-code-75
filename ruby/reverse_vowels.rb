require "debug"

def reverse_vowels(s)
  vowels = s.scan(/[aeiou]/i)
  s.gsub(/[aeiou]/i) {vowels.pop}
end

puts reverse_vowels("hello")
# reverse_vowels("leetcode")
# reverse_vowels("aA")
