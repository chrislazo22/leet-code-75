require "debug"

def min_window_string(s, t)
  result = {}
  left = 0
  right = t.length - 1
  min_winow = ""

  while right < s.length
    right += 1
    if (t.chars.sort - s[left...right].chars.sort).empty?
      result[s[left...right].length] = s[left...right]

      while (t.chars.sort - s[left...right].chars.sort).empty?
        result[s[left...right].length] = s[left...right]
        left += 1
      end
    end
  end

  return "" if result.empty?
  result.min[1]
end

p min_window_string("ADOBECODEBANC", "ABC")
p min_window_string("a", "a")
p min_window_string("aa", "aa")
