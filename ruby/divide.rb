require "debug"

def divide(dividend, divisor)
  result = 0
  sign = -1 if dividend.negative? || divisor.negative?
  sign = 1 if dividend.negative? && divisor.negative?
  dividend = dividend * -1 if dividend.negative?
  divisor = divisor * -1 if divisor.negative?

  while dividend > divisor
    result +=1

    dividend -= divisor
  end

  if result > 2**31 - 1
    return 2**31 - 1
  elsif result < -2**31
    return -2**31
  else
    return result
  end

  result
end

p divide(10, 3)
p divide(7, -3)
p divide(-1, 1)
