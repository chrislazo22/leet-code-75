require "debug"

def permutations(nums)
  result = {}
  generate_permutations([], nums, result)
  result
end

def generate_permutations(current_perm, remaining_nums, result) # [1, 2, 3], [1,2,3], []
  if current_perm.length == remaining_nums.length # 2 == 3
    result[current_perm.dup] = true
    return
  end

  remaining_nums.each do |num| # num = 3
    # next if current_perm.include?(num) # false [] does not include 1

    current_perm << num # current_perm = [1, 2, 3]
    generate_permutations(current_perm, remaining_nums, result)
    puts "Current_perm: #{current_perm}"
    current_perm.pop
  end
end

p permutations([1, 2, 3])
