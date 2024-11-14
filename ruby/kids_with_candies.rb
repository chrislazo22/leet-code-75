require "debug"

def kids_with_candies(candies, extra_candies)
  candies.map { |candy| candy + extra_candies >= candies.max_candies }
  # candies.each do |candy|
  #   if candy + extra_candies >= max_candies
  #     output << true
  #   else
  #     output << false
  #   end
  # end

  print output
end

# kids_with_candies([2,3,5,1,3], 3)
kids_with_candies([4,2,1,1,2], 1)
