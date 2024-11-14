require "debug"

def is_palindrome?(s)
  debugger
  s.downcase.gsub(/[^a-z0-9]/, '') == s.downcase.gsub(/[^a-z0-9]/, '').reverse
end

# p is_palindrome?("A man, a plan, a canal: Panama")
p is_palindrome? "ab_a"
