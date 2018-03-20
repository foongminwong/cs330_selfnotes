src = File.read('numbers')


# iw ant to match that
# match to look back not a minus sign ?<!
src.gsub!(/\b(?<!-)(\d|\d\d|[01]\d\d|2[0-4]\d|25[0-5])\b/) do
 $1.to_i.to_s(2) 
# go to integer and go to string of base, hexadecimal
end

puts src
