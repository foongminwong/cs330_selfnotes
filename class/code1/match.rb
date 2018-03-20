print '> '
line = gets.chomp

# some regex
if line =~ /^ *\w+@uwec.edu *$/
	puts 'Go you!'
else
	puts 'Bad user...'
end 
