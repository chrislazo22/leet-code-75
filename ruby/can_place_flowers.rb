require "debug"

def can_place_flowers(flowerbed, ns)
  flowers = flowerbed.count(1)

  debugger
  print flowerbed.count / 2 >= (ns + flowers)
end

can_place_flowers([1,0,0,0,1], 1)
# can_place_flowers([1,0,0,0,1], 2)
# can_place_flowers([1,0,0,0,0,0,1], 2)
# can_place_flowers([1,0,0,0,0,1], 2)
#
# May need a different approach here, iterate and check each
#
