s = 'tree'

# you only implement for s. but not t.

# static typing (compiler knows types at compiler and makes lots of decisions early, have no way to know make decision early) VS dynamic typing(interpreter examines types at runtime)

# no ruby compiler

#dot typing in runtime 

def s.updowncase

self[0].upcase + self[1..-1].downcase
end

puts s.updowncase

t = 'petra'
# if you change t to s = 'petra' still getting the error message
#puts t.updowncase



puts s.class
puts t.class
