turns = 0
correct = 0
wrong = 0

puts "Please enter your name:"
name = gets.chomp

start = Time.now()

while turns < 10
  turns += 1

  x = Random.rand(1..10)
  y = Random.rand(1..10)

  print "#{x} + #{y} = "

  answer = gets.to_i

  total = x + y

  if answer == total
    correct += 1
    puts "Right!"
  else
    wrong += 1
    puts "Wrong :("
  end
end

duration = Time.now() - start

total_attempts = correct + wrong
score = (correct.to_f / total_attempts) * 100

puts "Rights #{correct}; Wrongs #{wrong}; Score #{score}"
puts "You took #{duration} seconds!"
puts "#{duration/total_attempts} seconds per problem"

filename = "scores.txt"
file = File.open(filename, "a")
file.write "#{name}, #{duration}\n"
file.close()
