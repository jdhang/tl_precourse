puts "What is your name?"
name = gets.chomp
puts "Hi! #{name}"

10.times {puts name}

puts "What is your first name?"
first_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hi #{first_name} #{last_name}!"

# 5. first one, x = 3, second one, it gives an error, x is out of scope
# 6. the variable shoes was called out of the scope, thus undefined