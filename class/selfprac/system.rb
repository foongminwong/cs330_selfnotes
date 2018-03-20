def system(command)
  exec(command)
end
 
system('ls')
 
# This code will never run!
puts "after system"
