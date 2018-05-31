filename = "colours.txt"

File.open(filename, "r") do |file|
  line = file.gets

  while line != nil
    puts line
    line = file.gets
  end
end
