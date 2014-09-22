#1
array = [1,2,3,4,5,6,7,8,9,10]

array.each do |number|
  puts number
end

#2
array.each do |number|
  if number > 5
    puts number
  else
  end
end

#3
new_array = array.select{|num| num.odd? }
p new_array

#4 
array.push(11)
p array
array.insert(0,0)
p array

#5
array.pop
p array
array.push(3)
p array

#6
new_array = array.uniq
p new_array

#7
# Arrays are in an ordered sequence,
# Hashes use a key-value pair as referencing.

#8
hash = {key1: "value1", key2: "value2"}
hash2 = {:key3 => "value3", :key4 => "value4"}

#9
h = {a:1, b:2, c:3, d:4}
#9.1
p h[:b]
#9.2
h[:e] = 5;
p h
#9.3
h.delete_if{|k,v| v < 3.5}
p h

#10
# Yes to both questions
array_of_hashes = [hash, hash2]
hash_of_arrays = {array1: [1,2,3], array2: [4,5,6]}
p array_of_hashes
p hash_of_arrays

#11
#The official Ruby doc is nice because they give example code

#12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
          ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

def transfer(array)
  contact = {}
  contact[:email] = array[0]
  contact[:address] = array[1]
  contact[:phone] = array[2]
  return contact
end

contacts["Joe Smith"] = transfer(contact_data[0])
contacts["Sally Johnson"] = transfer(contact_data[1])

p contacts

#13 
puts "Joe's email is #{contacts["Joe Smith"][:email]}"
puts "Sally's phone number is #{contacts["Sally Johnson"][:phone]}"

#14
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
          ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact = {}
keys = [:email, :address, :phone]
info = contact_data.shift
keys.each do |i|
  contact[i] = info.shift
end

contacts["Joe Smith"] = contact

# Refactoring
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
          ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
keys = [:email, :address, :phone]

contacts.each do |name,hash|
  info = contact_data.shift
  keys.each do |key|
    hash[key] = info.shift
  end
end

p contacts

#15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if{|word| word.start_with?("s")}
p arr
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if{|word| word.start_with?("w", "s")}
p arr

#16
a = ['white snow', 'winter wonderland', 'melting ice',
      'slippery sidewalk', 'salted roads', 'white trees']
a.map! do |word|
  word.split(" ")
end
a.flatten!
p a

#17
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end

#Output: These hashes are the same!