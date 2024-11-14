require "debug"

def add_binary(a, b)
  result = []
  carry = "0"
  n = [a.length, b.length].max

  n.times do |i|
    debugger
    sums, carry = BINARY_MAP[[carry, a[i] || '0', b[i] || '0']]
    result << sums
  end

  result << carry if carry == "1"

  result.reverse.join
end

BINARY_MAP = {
  ['0', '0', '0'] => ['0', '0'],
  ['0', '0', '1'] => ['1', '0'],
  ['0', '1', '0'] => ['1', '0'],
  ['0', '1', '1'] => ['0', '1'],
  ['1', '0', '0'] => ['1', '0'],
  ['1', '0', '1'] => ['0', '1'],
  ['1', '1', '0'] => ['0', '1'],
  ['1', '1', '1'] => ['1', '1'],
}

# p add_binary("11", "1")
p add_binary("1010", "1011")
