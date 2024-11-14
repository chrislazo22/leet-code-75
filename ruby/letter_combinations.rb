require "debug"

NUMBER_MAP = {
  "2" => "abc",
  "3" => "def",
  "4" => "ghi",
  "5" => "jkl",
  "6" => "mno",
  "7" => "pqrs",
  "8" => "tuv",
  "9" => "wxyz"
}

def letter_combinations(digits) # "23"
  return [] if digits.empty?

  result = []
  generate_combinations(digits, 0, "", result) # "23", 0, "", []
  result
end

def generate_combinations(digits, index, combination, result)  # "23", 0, "a", []
  if index == digits.length # 2 == 2
    result << combination # result= ["ad"]
  else
    digit = digits[index] # digit = 3
    letters = NUMBER_MAP[digit] # letters = "def"
    letters.each_char do |char| # "e"
      generate_combinations(digits, index + 1, combination + char, result) # 23, 1, "ad", []
    end
  end
end

p letter_combinations("23")
