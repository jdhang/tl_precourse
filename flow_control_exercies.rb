# 1 - 1. false 2. false 3. false 4. true 5. true
# 2 - 
def upper(word)
  if word.length > 10
    word.upcase
  else
    word
  end
end

puts upper("poop")
puts upper("This is a long string")

# 3 -
def check(number)
  if number < 0
    puts "No negative numbers"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 50 and 100"
  else
    puts "#{number} is above 100"
  end
end

check(-1)
check(1)
check(51)
check(101)

# 4 - 
# 4.1 
'4' == 4 ? puts("TRUE") : puts("FALSE")
# FALSE
# 4.2
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end
# Did you get it right?

# 4.3
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty"
end
# Alright now!

# 5 - 

def check_too(number)
  case
  when number < 0
    puts "Noo negative numbers!"
  when number <= 50
    puts "#{number} is between 0 and 50"
  when number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end

puts "Enter a number"
num = gets.chomp.to_i

check(num)
check_too(num)

# 6 - 
def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
  end
end

equal_to_four(5)
# Initial error is because there was no end after the if statement