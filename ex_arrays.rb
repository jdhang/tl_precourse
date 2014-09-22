# Exercise 1
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include?(number)
  puts "#{number} is in the array"
else
  puts "#{number} is not in the array"
end

# Exercise 2
# 1.
arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)
p arr
# output: [1]

# 2.
arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)
p arr
# output: [1, 2, 3]

#3
arr = [["test", "hello", "world"],["example", "mem"]]
p arr[1][0]
puts arr.last.first

#4
arr = [15, 7, 18, 5, 12 ,8, 5, 1]

# 4.1
arr.index(5)
# outputs: 3
# 4.2
# arr.index[5]
# outputs: error
# 4.3
arr[5]
# outputs: 8

# 5
string = "Welcome to Tealeaf Academy!"
a = string[6]
b = string[11]
c = string[19]
# outputs: e, T, A

# 6
names = ['bob', 'joe', 'susan', 'margaret']
names[3] = 'jody'

# 7 
a = [1, 2, 3, 4, 5]
b = Array.new

a.each {|i| b.push(i+2)}

p a
p b