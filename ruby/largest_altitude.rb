require "debug"

def largest_altitude(gain)
    result = [0]

    gain.each do |num|
        result << result[-1] + num
    end

    result.max
end

print largest_altitude([-5,1,5,0,-7])

