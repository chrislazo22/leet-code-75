require "debug"

def compress(chars)
  result = []
  grouped_chras = chars.group_by { |x| x }

  grouped_chras.each do |key, value|
    result << key
    result << value.count if value.count > 1
  end

  result.join
end

# p compress(["a","a","b","b","c","c","c"])
p compress(["a"])
