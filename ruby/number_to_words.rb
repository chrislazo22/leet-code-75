require "debug"

def number_to_words(num)
  return "Zero" if num == 0

  suffixes = ["", "Thousand", "Million", "Billion"]
  parts = []

  while num > 0
    debugger
    parts << helper(num % 1000) unless num % 1000 == 0
    num /= 1000
  end
  debugger

  parts.zip(suffixes).reverse.map { |part, suffix| part + " " + suffix }.reverse.join(" ").strip
end

def helper(n)
  if n == 0
    ""
  elsif n < 10
    ONES[n]
  elsif n < 20
    TEENS[n - 10]
  elsif n < 100
    TENS[n / 10] + " " + helper(n % 10)
  else
    ONES[n / 100] + " Hundred " + helper(n % 100)
  end
end

ONES = %w[Zero One Two Three Four Five Six Seven Eight Nine]
TEENS = %w[Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen]
TENS = %w[Zero Ten Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety]

p number_to_words(1234567)
