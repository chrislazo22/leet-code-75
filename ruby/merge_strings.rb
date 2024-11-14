require "debug"

def merge_alternately(word1, word2)
  count = word1.length > word2.length ? word1.length : word2.length
  result = ""

  count.times do |index|
    result << word1[index]
    result << word2[index]
  end

  result << (word1[count..-1]) if word1.length > word2.length
  result << (word2[count..-1]) if word1.length < word2.length

  result
end

# merge_alternately("abc", "pqr")
# merge_alternately("ab", "pqrs")
merge_alternately("abcd", "pq")
