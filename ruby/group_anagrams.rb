require "debug"

def group_anagrams(strs)
  result = {}

  strs.each do |string|
    sorted_string = string.chars.sort.join
    result[sorted_string] ||= []
    result[sorted_string] << string
  end

  result.values
end

p group_anagrams(["eat","tea","tan","ate","nat","bat"])
