
path = ''
java = File.read(path)

# match those methods which have parentheses
# java.scan()blabla).each_with_index  do |name,i| then puts "#{i}. #{name}"

i = 0
java.scan(/public\s+.*?(\w+)\(/) do
 
puts "#{i}. #{$1}"
i += 1

end
