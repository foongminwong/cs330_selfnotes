expr = ARGV[0]


# %r is equivalent to / ... /
if expr =~ %r{(\d+)\s*([/%])\s*(\d+)}
	a= $1.to_i
	operator = $2
	b = $3.to_i

	if operator == '/'
		puts a/b
	else
		puts a%b
	end
end
