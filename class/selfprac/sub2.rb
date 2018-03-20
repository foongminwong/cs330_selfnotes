s = "f{9,10,11}_{3,4,5}"

if s =~ /\,\d+\,/
s.gsub!(/\,\d+\,/,"..")

else
end

puts s
