html = File.read(ARGV[0])

# .* for class attribute, to specify the css class
# don't use each, take it off
# dollar 1 and 2 will be he last elements to match img tags
# .* is a greedy match, keep gobbling, so change it to []

html.scan(/<img\s+.*src\s*=\s*"([^"]*)"/) do
	url =  $1
 	if url =~ %r{^//}
		url = "https:#{url}"
	end
	system("curl -O #{url}")
end
