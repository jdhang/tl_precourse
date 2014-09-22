#1
words = ["laboratory", "experiment", "Pans Labyrinth",
          "elaborate", "polar bear"]

words.each do |word|
  if word =~ /lab/
    puts "#{word} has 'lab' in it!"
  else
    puts "#{word} does not have 'lab' in it!"
  end
end

#2
def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!"}
# Nothing, need block.call

#3
# They keep your code running instead of stopping the program 
# mid-run. 

#4 
def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!"}

#5
# There is an error because the method was looking for an
# argument of type Block. "block" is just a regular
# variable with no value so it errors.