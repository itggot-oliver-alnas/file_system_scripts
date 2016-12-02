if File.exist? ARGV do |touch|
  puts "Error. File already exists"
else
  File.open(touch, "w")
end

if File.exist? ARGV do |cat|
  File.open(cat, "r")
else
  puts "Error. File does not exist"
end

if Dir.exist? ARGV do |ls|
  ls.glob("*")
else
  Dir.pwd.glob("*")
end
