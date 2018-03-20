test = File.read(ARGV[0])

text.scan(/.*ology$/) do |match|
	puts match
end
