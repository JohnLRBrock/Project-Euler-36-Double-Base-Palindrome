# John Brock
# 2018-01-22
# Project Euler #36: Double Base Palindromes
# https://projecteuler.net/problem=36

# str -> bool
# returns true if string is a palindrome
def palindrome?(string)
  0.upto(string.length / 2) { |n| return false unless string[n] == string[-1 * (n + 1)] }
  return true
end

# int - > int
def double_base_palindromes(limit)
  sum = 0
  1.upto(limit) do |n|
    sum += n if palindrome?(n.to_s) && palindrome?(n.to_s(2))
  end
  sum
end

start = Time.now
output = double_base_palindromes(1000000)
finish = Time.now
puts output
puts finish - start
