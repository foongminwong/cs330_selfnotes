s = "{10,11,12}{i,j,k}{7,8}{1,2}"

if s =~ /(,\d+)+(?=(,\d+)+)/

puts"herehere"
s.gsub!(/(,\d+)+(?=(,\d+)+)/, "..")
s.gsub!(",","")
else
end

puts s
if s=~/({.+}){3,}/
puts "here"
else
end


