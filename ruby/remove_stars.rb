require "debug"

# Removing Stars From a String
# You are given a string s, which contains stars *.

# In one operation, you can:

# Choose a star in s.
# Remove the closest non-star character to its left, as well as remove the star itself.
# Return the string after all stars have been removed.

# Note:

# The input will be generated such that the operation is always possible.
# It can be shown that the resulting string will always be unique.

def remove_stars(s)
  stack = []

  s.each_char do |char|
    char == "*" ? stack.pop : stack.push(char)
  end

  stack.join
end

remove_stars("leet**cod*e")
remove_stars("erase*****")
