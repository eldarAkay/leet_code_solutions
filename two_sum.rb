# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# Example:
# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

def two_sum(nums, target)
  hash = {}
  nums.each.with_index { |value, index| hash[value] = index }
  nums.each_with_index do |number, index|
    difference = target - number
    return [index, hash[difference]] if hash[difference] && hash[difference] != index
  end
end

result = two_sum([2, 7, 11, 15], 9)
p result == [0, 1]