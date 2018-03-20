s = "pic{fall,summer,winter}{16,17}"

if s=~ /(\d+),(\d+)/
   s.gsub!(/(\d+),(\d+)/,$1+".."+$2)
else
end

puts s
