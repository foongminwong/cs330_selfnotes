#s = "file<10-11>{.txt,.jpg}"

s = "file<10-11>.txt file<10-11>.jpg"


if s.include? "<"
   s.gsub!("<","{")
   s.gsub!(">","}")
   s.gsub!("-","..")
else
end
puts s
