id = 'isUnderSiege'

# global substitution

# id.gsub(pattern, replacement)

# capture the capital then put a space before the capital

# don't put $1, put \1

first =  id[0].upcase
rest = id[1..-1] #from index 1 to negative 1

#puts rest

newID =  first + rest.gsub(/([A-Z])/, ' \1')
puts newID

