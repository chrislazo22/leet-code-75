require "debug"

def max_diners(n, k, m, s)
  empty_seats = 0

  s.sort.each do |seat|
    left_empty = seat - k - 1
    right_empty = n - seat - k
    empty_seats += left_empty + right_empty
  end

  max_additional_diners = empty_seats / (2 * k + 1)
  max_additional_diners
end


p max_diners(10, 1, 2, [2,6])
