# 1
family = {
          uncles: ["bob", "joe", "steve"],
          sisters: ["jane", "jill", "beth"],
          brothers: ["frank", "rob", "david"],
          aunts: ["mary", "sally", "susan"]
        }

a = family.select {|k,v| k == :sisters || k == :brothers}
arr = a.values.flatten

p arr

#2
a = {a:1, b:2}
b = {c:3, d:4}

p a.merge(b)
p a
p b
p a.merge!(b)
p a 
p b

# 3
a = { a:1, b:2, c:3, d:4 }
a.each_key { |k| puts k}
a.each_value { |v| puts v}
a.each { |k,v| puts "#{k}: #{v}"}

# 4
person = {name: "Bob", occupation: "web developer", hobbies: "painting"}
puts person[:name]

# 5
# hash.has_value?(value)
hash = {1 => "one", 2 => "two"}
puts hash.has_value?("one")

# 6
words = ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
hash = {}

words.each do |word|
  key = word.split('').sort.join
  if hash.has_key?(key)
    hash[key].push(word)
  else
    hash[key] = [word]
  end
end

hash.each do |k,v|
  p v
  puts "------"
end

# 7
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# first is a symbol as the key, the second is a string as the key


# 8
# arrays don't have the method keys, only hashes do 
# B.


