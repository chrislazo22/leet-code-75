require "debug"

def gcd_of_strings(str1, str2)
  str1_size = str1.length
  str2_size = str2.length

  # Iterate through all possible substrings of str1
  (str1_size / 2).downto(1) do |len|
    debugger

    next unless str1_size % len == 0 # Check if len is a divisor of n

    substr = str1[0, len]
    if str1 == substr * (str1_size / len) && str2 == substr * (str2_size / len)
      return substr
    end
  end

  '' # If no common divisor found, return an empty string
end


# gcd_of_strings("ABCABC", "ABC")
# gcd_of_strings("ABABAB", "ABAB")
# gcd_of_strings("LEET", "CODE")
# gcd_of_strings("ABCDEF", "ABC")
gcd_of_strings("TAUXXTAUXXTAUXXTAUXXTAUXX", "TAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXXTAUXX")


### Notes
# need to find a common string first
